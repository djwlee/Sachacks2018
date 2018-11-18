//
//  ViewController.swift
//  SacKinghacks2018
//
//  Created by David Lee on 11/17/18.
//  Copyright © 2018 David Lee. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
   
    
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var Ranklabel: UILabel!
    
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func tapBar(_ sender: Any) {
        if !hamburgerMenuIsVisible {
            leadingC.constant = 150
            trailingC.constant = -150
            hamburgerMenuIsVisible = true
            Ranklabel.isHidden = true
            
            
        }else{
            leadingC.constant = 0
            trailingC.constant = 0
            hamburgerMenuIsVisible = false
            Ranklabel.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

