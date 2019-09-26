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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ser defaultValue
        currentColorRule.append(ColorHelper.textColorBlue)
        currentColorRule.append(ColorHelper.textColorRed)
        
        
        
    }

    @IBAction func changeTextcolorRule(_ sender: Any) {
        if(self.isSetRuleDefault)
        {
            currentColorRule.append(ColorHelper.textColorRed)
            currentColorRule.append(ColorHelper.textColorBlue)
        }
        else
        {
            currentColorRule.append(ColorHelper.textColorBlue)
            currentColorRule.append(ColorHelper.textColorRed)
        }
        self.isSetRuleDefault = !self.isSetRuleDefault
    }
    
}

