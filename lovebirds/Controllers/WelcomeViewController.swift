//
//  WelcomeViewController.swift
//  lovebirds
//
//  Created by Amelia Citra on 03/03/23.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "lovebirds"
       
    }

}
