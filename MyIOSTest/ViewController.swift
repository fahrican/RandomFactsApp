//
//  ViewController.swift
//  MyIOSTest
//
//  Created by fahri on 28.04.18.
//  Copyright © 2018 fahri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFact: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let backgroundColorProvider = BackgroundColorProvider()
    let factProvider = FactProvider()
    let blueColor = UIColor.blue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFact.text = factProvider.showRandomFact()
    }
    
    @IBAction func showFact() {
        
        funFact.text = factProvider.showRandomFact()
        let color = backgroundColorProvider.getRandomColor()
        view.backgroundColor = color
        funFactButton.tintColor = color
    }
}

