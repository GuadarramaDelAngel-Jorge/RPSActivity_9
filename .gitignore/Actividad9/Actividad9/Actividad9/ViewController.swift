//
//  ViewController.swift
//  Actividad9
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Jorge Guadarrama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var choice: choices!
    var opponentChoice: choices = choices.randchoice()
    
    enum choices: Int{
        case rock
        case paper
        case scissors
        
    // Using random
        static func randchoice() -> choices {
            let rand = arc4random_uniform(3)
            return choices(rawValue: Int(rand))!
        }
    }
    
    // Code and segue
    @IBAction func paperSelection(_ sender: Any) {
          self.performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    // Preparing my segues
    // Check conditions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        opponentChoice = choices.randchoice()
        let resultsvc: FinalViewController = segue.destination as! FinalViewController
        if segue.identifier == "scissorsSegue"{
            switch opponentChoice{
            case .rock:
                resultsvc.labelString = "Rock Crushes Scissors"
                
            case .paper:
                resultsvc.labelString = "Scissors beats Paper"
                
            case .scissors:
                resultsvc.labelString = "Tie!"
                
            }
        }else{
            switch opponentChoice{
            case .rock:
                resultsvc.labelString = "Paper beats Rock"
               
            case .paper:
                resultsvc.labelString = "Tie!"
                
            case .scissors:
                resultsvc.labelString = "Rock crushes Scissors"
               
            }
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

