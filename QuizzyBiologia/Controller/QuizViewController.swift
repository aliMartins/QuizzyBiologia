//
//  QuizViewController.swift
//  QuizzyBiologia
//
//  Created by Alieksiei martins on 02/03/2018.
//  Copyright © 2018 Alieksiei martins. All rights reserved.
//

import UIKit
import AMProgressBar


class QuizViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var answeredQuestions : Array = [999,998]
    let defaults = UserDefaults.standard
    var scoreStorage : String?
    let numberOfQuestions : Int = 10 // number of questions per difficulty
    let numberofQuestionsToUnlockLevel = 7
    
    
    @IBOutlet weak var badgeView: UIImageView!
    @IBOutlet weak var QuestionNumberLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var progressBar: AMProgressBar!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    var difficultyLevel : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
               
        // updating the badge
        if difficultyLevel == 1{
            badgeView.image = UIImage(named: "Fundamental_badge")
            scoreStorage = "MyScoreLevel1"
        } else if difficultyLevel == 2 {
            badgeView.image = UIImage (named: "Medium_Badge")
            scoreStorage = "MyScoreLevel2"
        } else {
            badgeView.image = UIImage (named: "Dificil_Badge")
            scoreStorage = "MyScoreLevel3"
        }
        
        //MARK: initiate cool progress Bar
        initiateProgressBar()
        
        //MARK: getting the score
       
        score = defaults.integer(forKey: scoreStorage!)
        if let allright = defaults.array(forKey: "RightQuestions") as? [Int] {
            answeredQuestions = allright
        }
        
        // MARK: sorting the question number and verryfying if it has already been answered
        questionNumber = Int(arc4random_uniform(UInt32(numberOfQuestions))) + (difficultyLevel!-1)*numberOfQuestions
        
        
        if score < numberOfQuestions {
        while answeredQuestions.contains(questionNumber) {
            questionNumber = Int(arc4random_uniform(UInt32(numberOfQuestions))) + (difficultyLevel!-1)*numberOfQuestions
        }
        } else {
            let alert = UIAlertController (title: "Parabéns!", message: "Voce ja completou todas as perguntas deste nivel. Deseja Tentar novamente este nivel ou Voltar a tela inicial?", preferredStyle: .actionSheet)
            let action = UIAlertAction (title: "Tentar Novamente", style: .default, handler: {action in self.resetLevel()})
            alert.addAction(action)
            let action2 = UIAlertAction (title: "Voltar", style: .default, handler: {action in self.navigationController?.popToRootViewController(animated: true)})
            alert.addAction(action2)
            present(alert, animated: true,completion: nil)
        }
        
        
        //MARK: Initializing first question
        nextQuestion()

        // Do any additional setup after loading the view.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
       
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        // MARK: sorting the question number and verryfying if it has already been answered
        questionNumber = Int(arc4random_uniform(UInt32(numberOfQuestions))) + (difficultyLevel!-1)*numberOfQuestions
        print (questionNumber)
        while answeredQuestions.contains(questionNumber) {
            questionNumber = Int(arc4random_uniform(UInt32(numberOfQuestions))) + (difficultyLevel!-1)*numberOfQuestions
        }
        
        nextQuestion()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func nextQuestion() {
        QuestionLabel.text = allQuestions.list[questionNumber].questionText
        updateUI()
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            
            score += 1
            self.answeredQuestions.append(questionNumber)
            
            // MARK: Updating Defaults
            self.defaults.set(self.score, forKey: scoreStorage!)
            self.defaults.set(self.answeredQuestions, forKey: "RightQuestions")
            if score == numberofQuestionsToUnlockLevel && difficultyLevel! < 3 {
                let alert = UIAlertController (title: "Parabens!", message: "Voce acertou mais de 70% e desbloqueou o nível \(self.defaults.integer(forKey: "PlayerLevel") + 1)", preferredStyle: .alert)
                let action = UIAlertAction (title: "Ok", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true,completion: nil)
                if defaults.integer(forKey: "PlayerLevel") == 1 {
                     self.defaults.set(2, forKey: "PlayerLevel")
                } else if defaults.integer(forKey: "PlayerLevel") == 2 {
                     self.defaults.set(3, forKey: "PlayerLevel")
                }

            } else if score >= numberOfQuestions {
                let alert = UIAlertController (title: "Parabéns!", message: "Voce ja completou todas as perguntas deste nivel. Deseja Tentar novamente este nivel ou Voltar a tela inicial?", preferredStyle: .actionSheet)
                let action = UIAlertAction (title: "Tentar Novamente", style: .default, handler: {action in self.resetLevel()})
                alert.addAction(action)
                let action2 = UIAlertAction (title: "Voltar", style: .default, handler: {action in self.navigationController?.popToRootViewController(animated: true)})
                alert.addAction(action2)
                present(alert, animated: true,completion: nil)
            } else {
                let alert = UIAlertController (title: "Correto", message: "Muito bem, Voce ganhou um ponto", preferredStyle: .alert)
                let action = UIAlertAction (title: "Ok", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true,completion: nil)
            }
            
        } else {
            // ProgressHUD.showError("Wrong")
            let alert = UIAlertController (title: "Errou", message: allQuestions.list[questionNumber].questionComment, preferredStyle: .alert)
            let action = UIAlertAction (title: "Ok", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true,completion: nil)
            
        }
        
    }
    
    func updateUI() {
        ScoreLabel.text = "Score: \(score)"
        QuestionNumberLabel.text = "Questão: \(questionNumber+1)/30"
        let ratioProgress = CGFloat(score)/CGFloat(numberOfQuestions)
        progressBar.setProgress(progress: ratioProgress, animated: true)
     }
        
    func initiateProgressBar(){
        
        AMProgressBar.config.barColor = .blue
        AMProgressBar.config.barCornerRadius = 10
        AMProgressBar.config.barMode = .determined // .undetermined
        
        AMProgressBar.config.borderColor = .white
        AMProgressBar.config.borderWidth = 1
        
        AMProgressBar.config.cornerRadius = 10
        
        AMProgressBar.config.hideStripes = false
        
        AMProgressBar.config.stripesColor = .green
        AMProgressBar.config.stripesDelta = 80
        AMProgressBar.config.stripesMotion = .left // .none or .left
        AMProgressBar.config.stripesOrientation = .diagonalRight // .diagonalLeft or .vertical
        AMProgressBar.config.stripesWidth = 30
        //AMProgressBar.config.stripesSpacing = 30
        
        AMProgressBar.config.textColor = .white
        AMProgressBar.config.textFont = UIFont.systemFont(ofSize: 12)
        AMProgressBar.config.textPosition = .onBar // AMProgressBarTextPosition
        
    }
    
    func resetLevel() {
        score = 0
        
        // MARK: Remove only the appropriatte itens
        var tempRightQuestions : Array = answeredQuestions.filter {$0 < numberOfQuestions*(difficultyLevel! - 1)}
        tempRightQuestions.append( contentsOf: answeredQuestions.filter {$0 > numberOfQuestions*difficultyLevel!})
        
        answeredQuestions = tempRightQuestions
        tempRightQuestions = [999,998]
        defaults.set(answeredQuestions, forKey: "RightQuestions")
        defaults.set(0, forKey: scoreStorage!)
        questionNumber = Int(arc4random_uniform(UInt32(numberOfQuestions))) + (difficultyLevel!-1)*numberOfQuestions
        nextQuestion()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
