//
//  TableviewViewController.swift
//  StockQuote
//
//  Created by Ociel Lerma on 1/12/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

class TableviewViewController: UIViewController {

    let cellId   = "cell"

    let publicCompanies = ["Nike", "Microsoft", "Google", "Amazon" ,
                           "eBay", "Walmart"  , "Tesla" , "Alibaba"]
    
    // Creating the Table View Controller
    lazy var tableView: UITableView = {
        let tabView = UITableView()
        tabView.delegate = self
        tabView.dataSource = self
        tabView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        return tabView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
        setupTableview()
        
    }
    
    
    // Setting up our table view.
    private func setupTableview(){
        view.addSubview(tableView)
        tableView.anchors(top: nil, topPad: 0,
                          bottom: nil, bottomPad: 0,
                          left: self.view.leftAnchor, leftPad: 0,
                          right: self.view.rightAnchor, rightPad: 0,
                          height: self.view.frame.height, width: 0)
    }
    
    // Giving a title and some color to the initial page.
    private func setupNavigationItem(){
        navigationItem.title = "Stock Quote"
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2106775641, green: 0.4190654755, blue: 0.2128750384, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: Colors.black,
                                                                   NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24)]
    }
    
}



// Adding the Tableview protocol stubs as in extension so as to not make
// our TableViewController messy.
extension TableviewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return publicCompanies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = publicCompanies[indexPath.row]
        return cell
    }
    
    
}
