//
//  ViewController.swift
//  menus
//
//  Created by J Antonio Enciso S on 18/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var openVar: UIBarButtonItem!
    
    @IBOutlet weak var dbVar: UIBarButtonItem!
    
    @IBOutlet weak var saveVar: UIBarButtonItem!
    
    @IBOutlet weak var labelVar: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func openAction(_ sender: Any) {
        labelVar.text = "Open pressed!!!"
    }
    
    @IBAction func dbAction(_ sender: Any) {
        labelVar.text = "DB pressed!!!"
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        labelVar.text = "Save pressed!!!"
    }
    
}

