//
//  ViewController.swift
//  TheChoiceApp
//
//  Created by Wynelher Tagayuna on 3/8/23.
//

import UIKit

class ChoiceViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!// Story
    @IBOutlet weak var choiceOne: UIButton!// First button
    @IBOutlet weak var choiceTwo: UIButton!// Second button
    
    var choiceBrain = ChoiceBrain()
    var copyEnding: String?// Copy of the ending
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Display first story and choices
        labelOutlet.text = choiceBrain.choices[choiceBrain.index].story
        choiceOne.setTitle(choiceBrain.choices[choiceBrain.index].choiceOne, for: .normal)
        choiceTwo.setTitle(choiceBrain.choices[choiceBrain.index].choiceTwo, for: .normal)
    }
    
    @IBAction func choicesButton(_ sender: UIButton) {
        choiceBrain.getDestination(from: sender)// Get index of next story and choices
        choiceBrain.getStoryAndChoices(labelOutlet, choiceOne, choiceTwo)// Display story and choices
        if choiceBrain.ending != nil{
            copyEnding = choiceBrain.ending ?? "ERROR"// Copy ending
            choiceBrain.ending = nil// Make ending nil for after reset
            performSegue(withIdentifier: "goToEnding", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEnding"{
            let destinationVC = segue.destination as! EndingViewController
            destinationVC.ending = copyEnding ?? "ERROR"// Assign the copy of the ending
        }
    }
    
}

