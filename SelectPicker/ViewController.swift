//
//  ViewController.swift
//  SelectPicker
//
//  Created by kiran on 1/22/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource , UITextFieldDelegate{
    
    
    var pickerData = [String]()

    @IBOutlet weak var pick: UIPickerView!
    
    @IBOutlet weak var myTextFld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pick.isHidden = true
        pickerData = ["Kathmandu", "Lalitpur", "Bhaktapur", "Pokhara", "Dharan", "Butwal", "Chitwan", "Hetauda",
                      "Birgunj", "Bhairava", "Palpa", "Dang", "Surkhet", "Banepa", "Panauti", "Dhulikhel", "Itahari"]
        pick.delegate = self
        pick.dataSource = self
        myTextFld.delegate = self
        myTextFld.text = pickerData[0]
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let valueSelected = pickerData[row]
        print(valueSelected)
        myTextFld.text = valueSelected
        pick.isHidden = true
    
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        pick.isHidden = false
        return false
    }

}

