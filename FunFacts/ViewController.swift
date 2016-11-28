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
    @IBOutlet weak var FunFactButton: UIButton!
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FunFactLabel.text = factProvider.randomFact()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showFact() {
        FunFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        FunFactButton.tintColor = randomColor
    }
}

