//
//  ProductInfoView.swift
//  O-G-Market
//
//  Created by odongnamu on 2021/12/26.
//

import UIKit
import SnapKit

class ProductInfoCollectionViewCell: UICollectionViewCell {
    static let id = "ProductInfoCell"
    let titleLabel = UILabel(textStyle: .largeTitle)
    let registrationDateLabel = UILabel(textStyle: .body, textColor: .darkGray)
    let descriptionLabel = UILabel(textStyle: .body)
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 임시 설정
        titleLabel.text = "오동나무의 뿌리"
        registrationDateLabel.text = "2021. 12. 25"
        descriptionLabel.text = "오동나무의 뿌리 팝니다. 먼저 사는 사람이 임자!! 하나 밖에 안남았대요 ㅜ"
        
        configureStackView()
        addSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ProductInfoCollectionViewCell {
    private func configureStackView() {
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 8
    }
    
    private func addSubviews() {
        stackView.addSubview(titleLabel)
        stackView.addSubview(registrationDateLabel)
        stackView.addSubview(descriptionLabel)
        
        addSubview(stackView)
    }
    
    private func configureLayout() {
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}