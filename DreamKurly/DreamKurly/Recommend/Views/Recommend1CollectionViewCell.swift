//
//  Recommend1CollectionViewCell.swift
//  DreamKurly
//
//  Created by JEON JUNHA on 2021/07/03.
//

import UIKit
import SnapKit

final class Recommend1CollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    static let identifier = "Recommend1CollectionViewCell"
    
    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
extension Recommend1CollectionViewCell {
    final private func setUI() {
        setBasics()
        setLayout()
    }
    final private func setBasics() {
        
    }
    final private func setLayout() {
        
    }
}
