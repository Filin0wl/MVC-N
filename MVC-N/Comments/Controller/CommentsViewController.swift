//
//  ViewController.swift
//  MVC-N
//
//  Created by Anastasia Perminova on 09.08.2022.
//

import UIKit

class CommentsViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var mainTableView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension CommentsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
