//
//  ProductEditViewController.swift
//  O-G-Market
//
//  Created by odongnamu on 2022/01/03.
//

import UIKit

class ProductEditViewController: UIViewController {
    let addProductImageCollectionViewController = AddProductImageCollectionViewController()
    let productNameTextField = UITextField()
    let productPriceTextField = UITextField()
    let productStockTextField = UITextField()
    let productDescriptionTextView = UITextView()
    let currencySegmentControl = UISegmentedControl(items: ["KRW", "USD"])
    let registerButton = UIButton()
    let priceStackView = UIStackView(axis: .horizontal, alignment: .center, spacing: 10)
    let contentsStackView = UIStackView(axis: .vertical, alignment: .leading, spacing: 10, distribution: .fill)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        setUpContents()
        configureNavigationBar()
        configureLayout()
    }
    
    private func addSubviews() {
        priceStackView.addArrangedSubview(productPriceTextField)
        priceStackView.addArrangedSubview(currencySegmentControl)
        
        contentsStackView.addArrangedSubview(addProductImageCollectionViewController.view)
        contentsStackView.addArrangedSubview(productNameTextField)
        contentsStackView.addArrangedSubview(priceStackView)
        contentsStackView.addArrangedSubview(productStockTextField)
        contentsStackView.addArrangedSubview(productDescriptionTextView)
        contentsStackView.addArrangedSubview(registerButton)
        
        view.addSubview(contentsStackView)
    }
    
    private func setUpContents() {
        view.backgroundColor = .white
        registerButton.backgroundColor = .lightGray
        registerButton.setTitle("상품 등록하기", for: .normal)
        registerButton.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        registerButton.layer.cornerRadius = 10
        productNameTextField.borderStyle = .roundedRect
        productNameTextField.placeholder = "상품명을 입력해주세요."
        productStockTextField.borderStyle = .roundedRect
        productStockTextField.placeholder = "상품 갯수를 입력해주세요."
        productPriceTextField.borderStyle = .roundedRect
        productPriceTextField.placeholder = "상품 가격을 입력해주세요."
        productDescriptionTextView.text = "상품 정보를 입력해주세요."
        productDescriptionTextView.layer.borderWidth = 1
        productDescriptionTextView.layer.borderColor = UIColor.systemGray5.cgColor
        productDescriptionTextView.font = .preferredFont(forTextStyle: .body)
    }
    
    private func configureNavigationBar() {
        let cancelButton = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(dismissSelf))
        cancelButton.tintColor = .lightGray
        navigationItem.rightBarButtonItem = cancelButton
        navigationItem.title = "상품 등록"
    }
    
    @objc
    func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    private func configureLayout() {
        contentsStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
        }
        
        addProductImageCollectionViewController.view.snp.makeConstraints({ make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.15)
        })
        
        productNameTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        productPriceTextField.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.7)
        }
        
        priceStackView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        productStockTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        productDescriptionTextView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        registerButton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
    }
}
