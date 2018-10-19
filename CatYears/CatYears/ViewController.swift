//
//  ViewController.swift
//  CatYears
//
//  Created by David E Bratton on 10/19/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cat1ImageView: UIImageView!
    @IBOutlet weak var cat2ImageView: UIImageView!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var ageCalculatedText: UILabel!
    @IBOutlet weak var ageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageButton.isEnabled = false
    }

    @IBAction func ageTextChanged(_ sender: UITextField) {
        if sender.text != "" {
            ageButton.isEnabled = true
        } else {
            ageButton.isEnabled = false
        }
    }
    
    
    @IBAction func getCatYearAgePressed(_ sender: Any) {
        //Your cat is 35 year old!
        
//        if let calcAge = Int(ageText.text!){
//            print(calcAge * 7)
//            let catAge = calcAge * 7
//            ageCalculatedText.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
//            ageCalculatedText.text = "Your cat is \(catAge) years old!"
//        } else {
//            print("Calculation Failed!!")
//            ageCalculatedText.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
//            ageCalculatedText.text = "Calculation Failed!!"
//        }
//
        if let age = ageText.text {
            if let ageNumber = Int(age) {
                let ageInCatYears = ageNumber * 7
                ageCalculatedText.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                ageCalculatedText.text = "Your cat is \(ageInCatYears) years old!"
            } else {
                ageCalculatedText.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                ageCalculatedText.text = "Calculation Failed!!"
            }
        }
        
        ageText.text = ""
        ageButton.isEnabled = false
    }
    
}

