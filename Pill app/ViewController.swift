//
//  ViewController.swift
//  Pill app
//
//  Created by Ibrahim Aden on 1/14/17.
//  Copyright © 2017 Ibrahim Aden. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerbtn: UIButton!
    let states = ["Alabama","Kentucky","California","Georgia","Washington",]
    override func viewDidLoad() {
        super.viewDidLoad()
       statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnpressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states [row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerbtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}


