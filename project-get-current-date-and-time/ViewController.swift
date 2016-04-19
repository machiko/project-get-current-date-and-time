//
//  ViewController.swift
//  project-get-current-date-and-time
//
//  Created by cheng on 2016/4/19.
//  Copyright © 2016年 reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentDateTxt.text = currentDateAndTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    宣告
    @IBOutlet weak var currentDateTxt: UILabel!
    
    
//    動作
    @IBAction func refreshAction(sender: AnyObject) {
        currentDateTxt.text = currentDateAndTime()
    }
    
//    取得時間
    func currentDateAndTime() -> (String) {
        let currentDate = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM dd, Y, HH:mm:ss a"
        let currentDateFormat = formatter.stringFromDate(currentDate)
        return currentDateFormat
    }
}

