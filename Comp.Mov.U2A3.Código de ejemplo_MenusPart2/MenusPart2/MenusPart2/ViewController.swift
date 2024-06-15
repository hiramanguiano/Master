//
//  ViewController.swift
//  MenusPart2
//
//  Created by J Antonio Enciso S on 18/09/22.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var menuAction: UIBarButtonItem!
    
    @IBOutlet weak var buttonVar: UIButton!
    
    @IBOutlet weak var labelVar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //buttonVar.menu = UIMenu(title: "Menu1", children: [UIMenu(title: "", options: //UIMenu.Options.displayInline, children: (1...3).map{UIAction(title: "Selected //item \($0)") {(action) in
          //  self.labelVar.text = "\(action.title)"
        //}})] )
        
        let items = UIMenu(title: "More", options: .displayInline, children: [
            UIAction(title: "Guardar", image: UIImage(named: "save"), handler: { _ in self.labelVar.text = "Selected item Guardar" }),
            UIAction(title: "Item 2", image: nil, handler: { _ in self.labelVar.text = "Selected item 2"  }),
            UIAction(title: "Item 3", image: nil, handler: { _ in self.labelVar.text = "Selected item 3" }),
            UIAction(title: "Item 4", image: nil, handler: { _ in  self.labelVar.text = "Selected item 4" })
        ])
 
        buttonVar.menu = UIMenu(title: "", children: [items])
        

        
        
        // Do any additional setup after loading the view.
    }

    


    
    

}

