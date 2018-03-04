//
//  QuestionBank.swift
//  QuizzyBiologia
//
//  Created by Alieksiei martins on 02/03/2018.
//  Copyright © 2018 Alieksiei martins. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: " Os vírus são considerados parasitas intracelulares obrigatórios, pois são capazes de se multiplicar apenas no interior de células hospedeiras.", correctAnswer: true, comment: "A afirmação esta correta. Os vírus, por não possuírem célula, somente conseguem efetuar metabolismo quando está parasitando uma célula viva."))
        
        list.append(Question(text: "A espécie humana, normalmente, possui 46 pares de cromossomos ", correctAnswer: false, comment: " A afirmação esta errada. A espécie humana possui 23 pares de cromossomos pareados, totalizando 46 cromossomos."))
        
        list.append(Question(text: "No planeta Terra, a água é a substância mais abundante, no entanto, nos seres vivos ela representa apenas 30% de sua biomassa úmida.", correctAnswer:false, comment: "A afirmação esta errada. A água representa entre 65% e 95% da biomassa úmida dos seres vivos."))
        
        list.append(Question(text: "Pessoas do grupo sanguíneo O são as receptoras universais, enquanto as do grupo sanguíneo AB são as doadoras universais ", correctAnswer: false, comment: "A afirmação esta errada. Pessoas com tipo de sangue AB são receptoras universais, enquanto que as do tipo 0 são doadoras universais. "))
        
        list.append(Question(text: "Um pesquisador estudou uma célula ao microscópio eletrônico, verificando a ausência de núcleo. Essa Célula é representante de seres Eucariontes.", correctAnswer:false, comment: " A afirmação esta errada. Células Procariontes são as únicas com ausência de núcleo delimitado por membrana."))
        
        list.append(Question(text: "A célula procariota tem seu material nuclear disperso no citoplasma, enquanto a eucariota apresenta carioteca, que envolve o material nuclear localizado na região central da célula.", correctAnswer: true, comment: "A afirmação esta correta. Procarionte são células sem organelas e núcleo. Células Eucariontes são células maiores, repleta de organelas e com núcleo envolvido por membrana."))
        
        list.append(Question(text: "O gás Oxigênio (O2) está presente em abundância na atmosfera terrestre. Ele é uma das principais substância para produção de energia dos organismos anaeróbios.", correctAnswer: false, comment: "A afirmação esta errada. Os organismos anaeróbios não dependem do O2 para seu metabolismo."))
        
        list.append(Question(text: "Os anfíbios são vertebrados cujo principal meio de respiração é através da pele.", correctAnswer:true, comment: "A afirmação esta correta. Apesar de possuírem um pulmão, esse é pouco desenvolvido."))
        
        list.append(Question(text: "O Cerrado brasileiro é caracterizado por plantas com raízes muito grandes, tortas devido a presença do metal Alumínio no solo e pelo incidência demasiada de focos de incêndio.", correctAnswer:true, comment: "A afirmação esta correta. Cerrado no Brasil é local de incêndios e pouca chuva, solo pobre e com metais pesados."))
        
        list.append(Question(text: "A hematose ocorre nos alvéolos, com a troca do oxigênio atmosférico pelo gás carbônico sangüíneo.", correctAnswer: true, comment: "A afirmação esta correta. Hematose é sinônimo de trocas gasosas que acontecem a nível aveolar, nos pulmões."))
        
        // Marromenos
        
        list.append(Question(text: " A necessidade de água tem tornado cada vez mais importante a reutilização planejada desse recurso. Assim, dentre os possíveis empregos para a denominada “água de reúso”, recomenda-se o uso urbano, para lavagem de ruas e áreas públicas.", correctAnswer:true, comment: "A afirmação esta correta. A água de reuso jamais poderá ser usada para consumo humano sem antes passar por tratamento."))
        
        list.append(Question(text: " O nível dos mares não sobe, mesmo recebendo continuamente as águas dos rios devido a formação de geleiras com água dos oceanos, nos pólos, contrabalança as águas dos rios que deságuam no mar.", correctAnswer:false, comment: "A afirmação esta errada. A evaporação da água dos oceanos e o deslocamento do vapor e das nuvens compensam as águas dos rios que deságuam no mar. "))
        
        list.append(Question(text: " O bicho-furão-dos-citros causa prejuízos anuais de US$ 50 milhões à citricultura brasileira, mas pode ser combatido se um certo agrotóxico for aplicado à plantação no momento adequado. É possível determinar esse momento utilizando-se uma armadilha constituída de uma caixinha de papelão, contendo uma pastilha com o feromônio da fêmea e um adesivo para prender o macho. Uma vantagem do uso dessas armadilhas seria otimizar o uso de produtos agrotóxicos.", correctAnswer: true, comment: " A afirmação esta correta. Quanto menos agrotóxico, menos material prejudicial à saúde é despejado no meio ambiente. Todo esforço para isso vale a pena ser feito."))
        
        list.append(Question(text: " Nas recentes expedições espaciais que chegaram ao solo de Marte, e através dos sinais fornecidos por diferentes sondas e formas de análise, vem sendo investigada a possibilidade da existência de água naquele planeta. A presença de água indicaria a possibilidade de extração de água visando ao seu aproveitamento futuro na Terra.", correctAnswer: false, comment: "A afirmação esta errada. A presença de água indicaria a possibilidade de existir ou ter existido alguma forma de vida semelhante à da Terra."))
        
        list.append(Question(text: " Os vírus podem ser considerados organismos vivos.", correctAnswer: true, comment: " A afirmação esta correta. Apesar dos vírus serem extremamente simples, eles possuem DNA/RNA que são essencialmente necessário para a reprodução e variabilidade genética, características fundamentais para a perpetuação da espécie"))
        
        list.append(Question(text: " As plantas são as principais representantes dos indivíduos heterotróficos, sendo chamadas de consumidores primários.", correctAnswer: false, comment: "A afirmação esta errada. As plantas são chamadas de indivíduos autotróficos e produtores."))
        
        list.append(Question(text: " Para comprovar a teoria da Biogênese, Pasteur (1861) demonstrou que os microorganismos surgem em caldos nutritivos, através da contaminação por germes, vindos do ambiente externo.", correctAnswer: true, comment: "A afirmação esta correta. Pasteur foi o responsável pelo famoso experimento do pescoço de ganso, em que ele produziu um tubo com pescoço longo, lembrando um pescoço de ganso. Esse episódio tornou a hipótese da Abiogênese obsoleta"))
        
        list.append(Question(text: " A geração espontânea, ou Biogênese, foi aceita por muitos cientistas, dentre estes, pelo filósofo grego Aristóteles (384-322 a. C.).", correctAnswer: false, comment: "A afirmação esta errada. A geração espontânea, ou Abiogênese."))
        
        list.append(Question(text: " Cada caráter hereditário é devido a um ou mais pares de fatores que se segregam durante a formação dos gametas, indo um fator para cada gameta.", correctAnswer: true, comment: " A afirmação esta correta. O estudo da genética foi objeto de estudos de Mendel. Esse descobriu, dentre outras coisas, que os fatores manifestados nos indivíduos são características que são repassados para as próximas gerações."))
        
        list.append(Question(text: " O comportamento reprodutivo varia muito entre os seres vivos e é por meio dele que uma espécie de ser vivo continua existindo na terra. A reprodução assexuada é responsável por maior variabilidade genética.", correctAnswer: false, comment: " A afirmação esta errada. A reprodução que proporciona maior variabilidade genética é a sexuada"))
        
        // fuderosas
        
        list.append(Question(text: " O que têm em comum Noel Rosa, Castro Alves, Franz Kafka, Álvares de Azevedo, José de Alencar e Frédéric Chopin? Todos eles morreram de tuberculose. O principal obstáculo para seu controle é o aumento do número de linhagens de bactérias resistentes aos antibióticos usados para combatê-la. Esse aumento se deve a mutações causadas pelos antibióticos, para que as bactérias se adaptem e transmitam essa adaptação a seus descendentes.", correctAnswer: false,  comment: " A afirmação esta errada. Esse aumento do número de linhagens resistentes se deve a mutações selecionadas pelos antibióticos, que eliminam as bactérias sensíveis a eles, mas permitem que as resistentes se multipliquem."))
        
        list.append(Question(text: " Cissiparidade é o mecanismo de reprodução assexuada em que um indivíduo dá origem a dois outros, geneticamente idênticos entre si. ", correctAnswer: false, comment: "A afirmação esta errada. Bipartição é o mecanismo de reprodução assexuada em que um indivíduo dá origem a dois outros, geneticamente idênticos entre si."))
        
        list.append(Question(text: " Estudos de anatomia comparada mostram que as semelhanças internas entre seres de espécies diferentes são resultantes de irradiação adaptativa.", correctAnswer:true, comment: " A afirmação esta correta. A irradiação adaptativa está presente quando são verificadas estruturas embrionárias semelhantes em espécies diferentes."))
        
        list.append(Question(text: " Órgãos que exercem as mesmas funções em espécies diferentes, mas que possuem origem embrionária distinta são chamados órgãos análogos, originados pela convergência adaptativa.", correctAnswer:true, comment: "A afirmação esta correta. Órgãos análogos, como as nadadeiras do golfinho e do tubarão, são órgãos de espécies com origem embrionária distintas, mamífero e peixe, cujo membro possuem a mesma funcionalidade."))
        
        list.append(Question(text: "As Proteínas são biopolímeros constituídos de aminoácidos, os quais são unidos entre si por meio de ligações de hidrogênio.", correctAnswer: false, comment: "A afirmação esta errada. As Proteínas são biopolímeros constituídos de aminoácidos, os quais são unidos entre si por meio de ligações de peptídicas."))
        
        list.append(Question(text: " O seqüestro (absorção) do carbono da atmosfera (CO2) é feito principalmente pelos seres clorofi lados que, no processo de fotossíntese, sintetizam a molécula da glicose(C6H12O6).", correctAnswer:true, comment: " A afirmação esta correta. Os seres clorofilados em questão são as plantas e o fitoplancton."))
        
        list.append(Question(text: " O desequilíbrio ecológico que o aumento da taxa de gás carbônico na atmosfera pode provocar é a destruição da camada de ozônio. ", correctAnswer:false, comment: "A afirmação esta errada. O aumento da temperatura no planeta, através do aumento do efeito estufa"))
        
        list.append(Question(text: " A maior parte do nitrogênio que compõe as moléculas orgânicas ingressa nos ecossistemas pela ação de algas marinhas.", correctAnswer:false, comment: " A afirmação esta errada. A maior parte do nitrogênio que compõe as moléculas orgânicas ingressa nos ecossistemas pela ação de bactérias."))
        
        list.append(Question(text: " O Cálcio (Ca2+) é um cátion muito importante aos seres vivos tendo em vista que é primordial para contração muscular e coagulação sanguínea.", correctAnswer:true, comment: " A afirmação esta correta. Além dessas características, o cálcio é importantíssimo para a ossificação."))
        
        list.append(Question(text: " Néctons são organismos que vivem em associação com o fundo dos ambientes aquáticos. Eles podem estar fixos ou livres no ambiente, porém não nadam ativamente nas águas como peixes e outros animais.", correctAnswer:false, comment: "A afirmação esta errada. Os bentos é que são organismos associados ao fundo de ambientes marinhos. Os Néctons são animais com livre movimentação no ambiente e não vivem na parte rasteira."))

        
    }
}
