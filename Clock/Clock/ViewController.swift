//
//  ViewController.swift
//  Clock
//
//  Created by 김동현 on 27/09/2019.
//  Copyright © 2019 John Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeHourLabel: UILabel!
    @IBOutlet weak var timeLeftSeperatorLabel: UILabel!
    @IBOutlet weak var timeMinuteLabel: UILabel!
    @IBOutlet weak var timeRightSeperatorLabel: UILabel!
    @IBOutlet weak var timeSecondLabel: UILabel!
    
    private var currentColorRule:[UIColor] = []
    private var isSetRuleDefault = true
    
    private var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ser defaultValue
        currentColorRule.append(ColorHelper.textColorRed)
        currentColorRule.append(ColorHelper.textColorBlue)
        
        timeHourLabel.text = "00"
        timeLeftSeperatorLabel.text = ":"
        timeMinuteLabel.text = "00"
        timeRightSeperatorLabel.text = ":"
        timeSecondLabel.text = "00"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc func updateUI() {
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: date)
        let colorIndex = components.second! % 2
        let currentTextColor = currentColorRule[colorIndex]
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "HH"
        timeHourLabel.text = dateFormat.string(from: date)
        timeHourLabel.textColor = currentTextColor
        
        timeLeftSeperatorLabel.textColor = currentTextColor
        
        dateFormat.dateFormat = "mm"
        timeMinuteLabel.text = dateFormat.string(from: date)
        timeMinuteLabel.textColor = currentTextColor
        
        timeRightSeperatorLabel.textColor = currentTextColor
        
        dateFormat.dateFormat = "ss"
        timeSecondLabel.text = dateFormat.string(from: date)
        timeSecondLabel.textColor = currentTextColor
        
    }
    

    @IBAction func changeTextcolorRule(_ sender: Any) {
        var updatedColorRule : [UIColor] = []
        if(self.isSetRuleDefault)
        {
            updatedColorRule.append(ColorHelper.textColorBlue)
            updatedColorRule.append(ColorHelper.textColorRed)
        }
        else
        {
            updatedColorRule.append(ColorHelper.textColorRed)
            updatedColorRule.append(ColorHelper.textColorBlue)
        }
        self.currentColorRule = updatedColorRule
        self.isSetRuleDefault = !self.isSetRuleDefault
    }
    
}

