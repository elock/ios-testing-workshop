//
//  DragonAdLib.swift
//  iOS Workshop App
//
//  Created by Elysia Lock on 7/13/19.
//  Copyright © 2019 Elysia Lock. All rights reserved.
//

import UIKit

class DragonAdLib: UIViewController {

    @IBOutlet weak var verbLabel: UILabel!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var openCreatedAdLibButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        verbTextField.delegate = self as? UITextFieldDelegate
        nounTextField.delegate = self as? UITextFieldDelegate
        
    }

    @IBAction func openCreatedAdLib(_ sender: Any) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        verbTextField.resignFirstResponder()
        nounTextField.resignFirstResponder()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController : AdLibModal = segue.destination as! AdLibModal
        
        destViewController.labelText = "I will \(verbTextField.text!) the fierce dragon with my mighty \(nounTextField.text!)!"
    }
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
