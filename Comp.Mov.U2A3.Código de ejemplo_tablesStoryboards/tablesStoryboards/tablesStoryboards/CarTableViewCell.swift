//
//  CarTableViewCell.swift
//  tablesStoryboards
//
//  Created by J Antonio Enciso S on 23/09/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {

   

    
    @IBOutlet weak var carLabel: UILabel!
    
    @IBOutlet weak var carDescription: UILabel!
    
    @IBOutlet weak var carImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
