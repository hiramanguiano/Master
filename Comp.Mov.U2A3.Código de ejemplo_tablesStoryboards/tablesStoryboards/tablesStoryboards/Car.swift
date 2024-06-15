//
//  Car.swift
//  tablesStoryboards
//
//  Created by J Antonio Enciso S on 23/09/22.
//

import Foundation
import UIKit

class Car {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var description: String
    
    init?(name: String, photo: UIImage?, description: String) {
        
        self.name = name
        self.photo = photo
        self.description = description
        
        if name.isEmpty || description.isEmpty  {
            return nil
        }
    }
    
}
