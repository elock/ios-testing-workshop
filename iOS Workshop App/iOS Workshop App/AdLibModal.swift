//
//  AdLibModal.swift
//  iOS Workshop App
//
//  Created by Elysia Lock on 7/14/19.
//  Copyright © 2019 Elysia Lock. All rights reserved.
//

import UIKit

class AdLibModal: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var Label: UILabel!
    
    var labelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label.text = labelText
    }

    @IBAction func closeModal(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
