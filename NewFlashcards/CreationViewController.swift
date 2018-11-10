//
//  CreationViewController.swift
//  NewFlashcards
//
//  Created by Lakshmi Vaka on 11/10/18.
//  Copyright © 2018 Lakshmi Vaka. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTaponCancel(_ sender: Any) {
        dismiss(animated:true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    @IBAction func didTaponDone(_ sender: Any) {
        let questionText = questiontextField.text
        
        let answerText = answertextField.text
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        dismiss(animated: true)
    }
}
