//
//  CommentCell.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 09.08.2022.
//

import UIKit

class CommentCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    func configure(with comment: Comment) {
        self.titleLabel.text = comment.name
        self.descriptionTextView.text = comment.effect
    }
    
    
}
