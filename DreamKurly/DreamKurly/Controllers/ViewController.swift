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
        view.backgroundColor = .red
        setUI()
    }
    
    func configureTableView() {
        recommendationTableView.backgroundColor = .clear
        recommendationTableView.separatorStyle = .none
        recommendationTableView.allowsSelection = false

        recommendationTableView.dataSource = self
        recommendationTableView.delegate = self

        recommendationTableView.register(RecommendTableViewCell.self,
                                         forCellReuseIdentifier: RecommendTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RecommendTableViewCell.identifier, for: indexPath) as! RecommendTableViewCell
        return cell
    }
    
    
}

extension ViewController {
    func setUI() {
        setBasic()
        setLayout()
    }
    func setBasic() {
        
    }
    func setLayout() {
        view.addSubview(recommendationTableView)
        recommendationTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
