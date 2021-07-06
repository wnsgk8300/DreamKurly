//
//  MyKurlyVC.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/04.
//

import UIKit

class MyKurlyVC: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    let myKurlyTableView = UITableView(frame: .zero, style: .plain)
    
    let topView = MyKurlyTopView()
    
    let MyKurlyMenu = [["비회원 주문 조회", "알림 설정"], ["컬리소개", "배송 안내", "공지사항", "자주하는 질문", "고객센터", "이용안내"]]
    override func viewDidLoad() {
        setUI()
    }
}
// MARK: - objc
extension MyKurlyVC {
    @objc
    func tapPurpleButton(_ sender: UIButton) {
        print(#function)
        let nextVC = MyKurlyLoginVC()
        let naviVC = UINavigationController(rootViewController: nextVC)
        present(naviVC, animated: true, completion: nil)
    }
}

// MARK: - UITableView
extension MyKurlyVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MyKurlyMenu[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyKurlyTableViewCell.identifier, for: indexPath) as? MyKurlyTableViewCell else { fatalError()}
        cell.menuLabel.text = MyKurlyMenu[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
    
}
extension MyKurlyVC: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 12
    }
}

// MARK: - UI
extension MyKurlyVC {
    final private func setUI() {
        setBasics()
        setLayout()
    }
    final private func setBasics() {
        topView.purpleButton.addTarget(self, action: #selector(tapPurpleButton(_:)), for: .touchUpInside)
        
        scrollView.backgroundColor = .lightGray
        
        myKurlyTableView.register(MyKurlyTableViewCell.self, forCellReuseIdentifier: MyKurlyTableViewCell.identifier)
        myKurlyTableView.dataSource = self
        myKurlyTableView.delegate = self
        myKurlyTableView.rowHeight = 60
        myKurlyTableView.isScrollEnabled = false
        myKurlyTableView.backgroundColor = .lightGray
    }
    final private func setLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.bottom.equalToSuperview()
            $0.height.equalTo(view.frame.height * 2)
        }
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.trailing.equalTo(view)
            $0.height.equalTo(view.frame.height)
        }
        
        [topView, myKurlyTableView].forEach {
            contentView.addSubview($0)
        }
        topView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(240)
        }
        myKurlyTableView.snp.makeConstraints {
            $0.top.equalTo(topView.snp.bottom)
            $0.leading.trailing.equalTo(view)
            $0.height.equalTo(view)
        }
    }
}
