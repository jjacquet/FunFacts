//
//  ViewController.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/26/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FunFactLabel: UILabel!
    let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FunFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        FunFactLabel.text = factProvider.randomFact()
        
    }

}

