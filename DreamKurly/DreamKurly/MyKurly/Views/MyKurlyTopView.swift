//
//  MyKurlyTopView.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/04.
//

import UIKit

class MyKurlyTopView: UIView {
    
    private let SignInLabel = UILabel()
    let BenefitsButton = UIButton()
    let purpleButton = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// MARK: - UI
extension MyKurlyTopView {
    final private func setUI() {
        setBasics()
        setLayout()
    }
    final private func setBasics() {
        SignInLabel.text = "회원 가입하고\n다양한 혜택을 받아보세요!"
        SignInLabel.font = UIFont.systemFont(ofSize: 20)
        SignInLabel.numberOfLines = 2
        SignInLabel.textAlignment = .center
        
        BenefitsButton.setTitle("가입 혜택 보기 >", for: .normal)
        BenefitsButton.setTitleColor(.gray, for: .normal)
        BenefitsButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        
        purpleButton.backgroundColor = UIColor.appColor(.mainColor)
        purpleButton.setTitle("로그인/회원가입", for: .normal)
        purpleButton.setTitleColor(.white, for: .normal)
        purpleButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        purpleButton.layer.cornerRadius = 4

    }
    final private func setLayout() {
        [SignInLabel, BenefitsButton, purpleButton].forEach {
            self.addSubview($0)
        }
        SignInLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(28)
            $0.centerX.equalToSuperview()
        }
        BenefitsButton.snp.makeConstraints {
            $0.top.equalTo(SignInLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }
        purpleButton.snp.makeConstraints {
            $0.top.equalTo(BenefitsButton.snp.bottom).offset(28)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(44)
        }
    }
}

