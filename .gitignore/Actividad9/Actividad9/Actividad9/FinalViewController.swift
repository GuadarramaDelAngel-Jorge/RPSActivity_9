//
//  FinalViewController.swift
//  Actividad9
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Jorge Guadarrama. All rights reserved.
//

import Foundation
import UIKit

class FinalViewController: UIViewController{

    // Final results
    @IBOutlet weak var statusLabel: UILabel!

    var labelString: String!
    override func viewWillAppear(_ animated: Bool) {
        if let labelString = self.labelString{
            self.statusLabel?.text = labelString
        }
    }
    
    // Play again button
    @IBAction func playAgain(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
    }
    
}
