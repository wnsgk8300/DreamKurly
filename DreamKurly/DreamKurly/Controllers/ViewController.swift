//
//  ViewController.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/06/26.
//

import UIKit

class ViewController: UIViewController {
    
    private let recommendationTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func configureTableView() {
        recommendationTableView.backgroundColor = .clear
        recommendationTableView.separatorStyle = .none
        recommendationTableView.allowsSelection = false

        recommendationTableView.dataSource = self
        recommendationTableView.delegate = self

        recommendationTableView.register(RecommendProductListCell.self,
                                         forCellReuseIdentifier: RecommendProductListCell.identifier)
        recommendationTableView.register(RecommendReviewsProductCell.self,
                                         forCellReuseIdentifier: RecommendReviewsProductCell.identifier)
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
