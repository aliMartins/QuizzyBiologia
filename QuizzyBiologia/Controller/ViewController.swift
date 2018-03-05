//
//  ViewController.swift
//  QuizzyBiologia
//
//  Created by Alieksiei martins on 02/03/2018.
//  Copyright © 2018 Alieksiei martins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var chosenDifficultyLevel : Int = 0
    let defaults0 = UserDefaults.standard
    var playerLevel : Int = 1
    
    @IBOutlet weak var MidButton: UIButton!
    @IBOutlet weak var HardButton: UIButton!
    
    @IBAction func hardButtonPressed(_ sender: Any) {
        chosenDifficultyLevel = 3
        performSegue(withIdentifier: "goToQuizzScreen", sender: self)
        
    }
    @IBAction func MediumButtonPressed(_ sender: Any) {
        chosenDifficultyLevel = 2
        performSegue(withIdentifier: "goToQuizzScreen", sender: self)
        
    }
    @IBAction func easyButtonPressed(_ sender: Any) {
        chosenDifficultyLevel = 1
        performSegue(withIdentifier: "goToQuizzScreen", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if defaults0.integer(forKey: "PlayerLevel") > 1 {
            playerLevel = defaults0.integer(forKey: "PlayerLevel")
        } else {
            defaults0.set(1, forKey: "PlayerLevel")
        }
        print ("player Level")
        print (playerLevel)
        if playerLevel == 2{
            MidButton.isEnabled = true
        } else if playerLevel == 3 {
            MidButton.isEnabled = true
            HardButton.isEnabled = true
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        
        if defaults0.integer(forKey: "PlayerLevel") > 1 {
            playerLevel = defaults0.integer(forKey: "PlayerLevel")
        } else {
            defaults0.set(1, forKey: "PlayerLevel")
        }
        if playerLevel == 2{
            MidButton.isEnabled = true
        } else if playerLevel == 3 {
            MidButton.isEnabled = true
            HardButton.isEnabled = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuizzScreen" {
            let destinationVC = segue.destination as! QuizViewController
        destinationVC.difficultyLevel = chosenDifficultyLevel
        }
    }
    
    //TODO: implementar um i button
    
}

