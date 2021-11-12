//
//  ViewController.swift
//  datePicker
//
//  Created by 김상현 on 2021/01/17.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector : Selector = #selector(DateViewController.updatetime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblDatePicker: UIDatePicker!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval:interval,target:self,selector:timeSelector,userInfo:nil,repeats:true)
        
       
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView : UIDatePicker = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간 : "+formatter.string(from: datePickerView.date)
    }
    
    @objc func updatetime() {
        /*lblCurrentTime.text = String(count)
        count+=1*/
        
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"+"년"+"MM"+"월"+"dd"+"일"
        lblCurrentTime.text = "현재시간 : "+formatter.string(from: date as Date)
        
        
    }
    
}

