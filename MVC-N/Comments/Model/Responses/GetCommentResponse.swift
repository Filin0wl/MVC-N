//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 10.08.2022.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [[String: AnyObject]]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dictionary: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
