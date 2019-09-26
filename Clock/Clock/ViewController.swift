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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTextcolorRule(_ sender: Any) {
    }
    
}

