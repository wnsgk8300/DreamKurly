//
//  MyKurlyLoginVC.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/04.
//

import UIKit

class MyKurlyLoginVC: UIViewController {
    
    let idTextField = UITextField()
    let pwTextField = UITextField()
    let loginButton = MyKurlyLongButton()
    let forgotIDButton = UIButton()
    let midImage = UILabel()
    let forgotPWButton = UIButton()
    let signUpButton = UIButton()
    
    override func viewDidLoad() {
        setUI()
        view.backgroundColor = .white
    }
}

// MARK: - UI
extension MyKurlyLoginVC {
    final private func setUI() {
        setBasics()
        setLayout()
    }
    final private func setBasics() {
        [idTextField, pwTextField].forEach {
            $0.layer.cornerRadius = 4
            $0.tintColor = .lightGray
            $0.textColor = .lightGray
            $0.layer.borderColor = UIColor.lightGray.cgColor
            $0.layer.borderWidth = 1
            $0.font = UIFont.systemFont(ofSize: 16)
        }
        idTextField.placeholder = "   아이디를 입력해주세요"
        pwTextField.placeholder = "   비밀번호를 입력해주세요"
        loginButton.setTitle("로그인", for: .normal)
        signUpButton.setTitle("회원가입", for: .normal)
        
        signUpButton.backgroundColor = .white
        signUpButton.setTitleColor(UIColor.appColor(.mainColor), for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        signUpButton.layer.cornerRadius = 4
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = UIColor.appColor(.mainColor).cgColor
        
        midImage.text = "|"
        midImage.textColor = .lightGray
        
        [forgotIDButton, forgotPWButton].forEach {
            $0.setTitleColor(.gray, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        }
        forgotIDButton.setTitle("아이디 찾기", for: .normal)
        forgotPWButton.setTitle("비밀번호 찾기", for: .normal)
    }
    final private func setLayout() {
        [idTextField, pwTextField, loginButton, forgotIDButton, midImage, forgotPWButton, signUpButton].forEach {
            view.addSubview($0)
        }
        idTextField.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.leading.trailing.equalToSuperview().inset(MyKurlyLongButton().sideInset)
            $0.height.equalTo(MyKurlyLongButton().buttonHeight)
        }
        pwTextField.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(MyKurlyLongButton().sideInset)
            $0.height.equalTo(MyKurlyLongButton().buttonHeight)
        }
        loginButton.snp.makeConstraints {
            $0.top.equalTo(pwTextField.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(MyKurlyLongButton().sideInset)
        }
        midImage.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        forgotIDButton.snp.makeConstraints {
            $0.trailing.equalTo(midImage).inset(8)
            $0.centerY.equalTo(midImage)
        }
        forgotPWButton.snp.makeConstraints {
            $0.leading.equalTo(midImage).inset(8)
            $0.centerY.equalTo(midImage)
        }
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(midImage.snp.bottom).offset(24)
            $0.leading.trailing.equalToSuperview().inset(MyKurlyLongButton().sideInset)
            $0.height.equalTo(45)
        }
    }
}
