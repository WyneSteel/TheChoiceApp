//
//  EndingViewController.swift
//  TheChoiceApp
//
//  Created by Wynelher Tagayuna on 3/15/23.
//

import UIKit

class EndingViewController: UIViewController {

    @IBOutlet weak var endingLabel: UILabel!
    @IBOutlet weak var bgColor: UIView!
    
    var ending: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let endingKind = ending{
            if endingKind == "GOOD ENDING"{// If choices led to good ending
                bgColor.backgroundColor = .systemGreen
                endingLabel.text = endingKind
            }else{// If choices led to bad ending
                bgColor.backgroundColor = .systemRed
                endingLabel.text = endingKind
            }
        }
    }
    
    @IBAction func repeatButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
