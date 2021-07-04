//
//  MyKurlyTableViewCell.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/04.
//

import UIKit

class MyKurlyTableViewCell: UITableViewCell {
    
    static let identifier = "MyKurlyTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension MyKurlyTableViewCell {
    
    final private func setUI() {
        setBasic()
        setLayout()
    }
    final private func setBasic() {
        
    }
    final private func setLayout() {
        
    }
}
