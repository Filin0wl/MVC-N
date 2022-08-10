//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 10.08.2022.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping() -> ()) {
        guard let url = URL(string: "https://wizard-world-api.herokuapp.com/Elixirs/") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            <#code#>
        }
    }
}
