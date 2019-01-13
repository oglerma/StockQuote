//
//  TableviewViewController.swift
//  StockQuote
//
//  Created by Ociel Lerma on 1/12/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

class TableviewViewController: UIViewController {

    let cellId = "cell"
    
    // Creating the Table View Controller
    lazy var tableView: UITableView = {
        let tabView = UITableView()
        tabView.delegate = self
        tabView.dataSource = self
        tabView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tabView.translatesAutoresizingMaskIntoConstraints = false
        return tabView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewController()
        
        
    }
    
    
    // Adding constraints to the table View controller.
    func setUpTableViewController(){
        view.addSubview(tableView)
        tableView.anchors(top: view.topAnchor, topPad: 0,
                          bottom: view.bottomAnchor, bottomPad: 0,
                          left: view.leftAnchor, leftPad: 0,
                          right: view.rightAnchor, rightPad: 0,
                          height: view.bounds.height, width: 0)
    }



}



// Adding the Tableview protocol stubs as in extension so as to not make
// our TableViewController messy.
extension TableviewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Index Path \(indexPath)"
        return cell
    }
    
    
}
