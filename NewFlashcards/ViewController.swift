//
//  ViewController.swift
//  NewFlashcards
//
//  Created by Lakshmi Vaka on 11/10/18.
//  Copyright © 2018 Lakshmi Vaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var frontLabel: UILabel!
    
    @IBOutlet weak var backLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTaponFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
    }
    func updateFlashcard(question: String, answer: String){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

