//
//  ViewController.swift
//  SwingApp
//
//  Created by J Antonio Enciso S on 13/09/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    let colors = ["Red","Yellow","Green","Blue"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connect data:
               self.picker.delegate = self
               self.picker.dataSource = self

    }


    @IBAction func buttonAction(_ sender: Any) {
        //label.text = "Bienvenido!!!"
        textField.text = "user2809"
        label.text = textField.text
    }
    
    
    
    
    @IBAction func segmentAction(_ sender: Any) {
        label.text = segment.titleForSegment(at: segment.selectedSegmentIndex)
        
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        label.text = slider.value.description
         
    }
    
    
    @IBAction func switchAction(_ sender: Any) {
        if (`switch`.isOn) {
            label.text = "switch on"
        }
        else {
            label.text = "switch off"
        }
            
            
    }
    
    
    @IBAction func datePickerAction(_ sender: Any) {
        label.text =  datePicker.date.description
        
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){

          if (row == 0) {
              self.view.backgroundColor = UIColor.white
              label.text = "Red"
          } else if (row == 1) {
              
              self.view.backgroundColor = UIColor.blue
              label.text = "Yellow"
              
          } else if (row == 2) {

              self.view.backgroundColor = UIColor.yellow
              label.text = "Green"

          }else {

              self.view.backgroundColor = UIColor.cyan
              label.text = "Blue"

          }

    }
    
    
    
}

