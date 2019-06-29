//
//  ViewController.swift
//  PlayerApp
//
//  Created by Leo on 6/24/19.
//  Copyright © 2019 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay() {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(dayTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date!)
        
        resultLabel.text = weekDay
        
        
    }

}

