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
    
    let publicCompanies = ["Nike", "Microsoft", "Google", "Amazon" ,
                           "eBay", "Walmart"  , "Tesla" , "Alibaba"]
    
    // Creating the Table View Controller
    lazy var tableView: UITableView = {
        let tabView = UITableView()
        tabView.delegate = self
        tabView.dataSource = self
        tabView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        tabView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        return tabView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
        view.addSubview(tableView)
        
    }
    
    // Giving a title and some color to the initial page.
    private func setupNavigationItem(){
        navigationItem.title = "Stock Quote"
        navigationController?.navigationBar.barTintColor = Colors.green
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
