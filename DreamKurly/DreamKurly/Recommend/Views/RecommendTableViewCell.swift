//
//  RecommendTableViewCell.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/06/30.
//

import SnapKit
import UIKit

class RecommendTableViewCell: UITableViewCell {
    
    static let identifier = "RecommendTableViewCell"
    let labelButton = UIButton()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let seeLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension RecommendTableViewCell
{
    
    final private func setUI() {
        setBasic()
        setLayout()
    }
    final private func setBasic() {
        
    }
    final private func setLayout() {
        
    }
}
