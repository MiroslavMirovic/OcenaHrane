//
//  Meal.swift
//  OcenaHrane
//
//  Created by Miroslav Mirovic on 12/10/17.
//  Copyright © 2017 Miroslav Mirovic. All rights reserved.
//

import UIKit

class Meal: NSObject {
    
    
    //MARK Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK Types
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    //MARK: Initialization
    init?(name:String, photo: UIImage?, rating: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    //MARK NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(rating, forKey: PropertyKey.rating)
    }
}
