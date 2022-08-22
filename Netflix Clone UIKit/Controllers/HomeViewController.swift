//
//  HomeViewController.swift
//  Netflix Clone UIKit
//
//  Created by Daniel Spalek on 22/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Make a row
    private let homeFeedTable: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        /* viewDidLayoutSubviews is called when the view of your viewController has just finished its laying out and you can assume that at that point your views are in their correct places/frames according to your autolayout constraints. You shouldn't perform any action assuming your views have their final frames before that method is called: for example, if you try to aView setFrame: in your viewDidLoad it will probably fail/have no effect as autolayout changes its frame during laying out phase. Therefore, if you really need to change its frame, you should call setFrame: in/after viewDidLayoutSubviews */
        homeFeedTable.frame = view.bounds // It's going to take the whole bounds of our screen
        
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20 // We want 20 rows
    }
    
    // delegate method that tells the table view which cell we are going to dequeue for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello world"
        return cell
    }
     
}
