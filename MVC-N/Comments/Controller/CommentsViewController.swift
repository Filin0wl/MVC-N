//
//  ViewController.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 09.08.2022.
//

import UIKit

class CommentsViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var mainTableView: UITableView!
    
    //MARK: - Fields
    var comments = [Comment]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.mainTableView.reloadData()
        }
    }


}

extension CommentsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
