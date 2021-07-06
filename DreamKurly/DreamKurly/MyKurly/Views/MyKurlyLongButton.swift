//
//  MyKurlyLongButton.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/05.
//

import UIKit

class MyKurlyLongButton: UIButton {
    let sideInset = 20
    let buttonHeight = 45
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setUp()
    }
    func setUp() {
        self.backgroundColor = UIColor.appColor(.mainColor)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        self.layer.cornerRadius = 4
        self.frame.size.height = 45
    }
}
