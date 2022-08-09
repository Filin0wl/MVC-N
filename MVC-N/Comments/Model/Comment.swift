//
//  Comment.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 09.08.2022.
//

import Foundation

struct Comment {
    
    var name: String
    var effect: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary["name"] as? String,
                let effect = dictionary["effect"] as? String
        else { return nil }
        
        self.name = name
        self.effect = effect
    }
}
