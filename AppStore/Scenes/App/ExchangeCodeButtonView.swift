//
//  ExchangeCodeButtonView.swift
//  AppStore
//
//  Created by Yujean Cho on 2022/07/24.
//

import SnapKit
import UIKit

final class ExchangeCodeButtonView: UIView {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("코드 교환", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0, weight: .semibold)
        button.backgroundColor = .tertiarySystemGroupedBackground
        button.layer.cornerRadius = 7.0
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ExchangeCodeButtonView {
    func setupLayout() {
        [
            button
        ].forEach{ addSubview($0) }
        
        button.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(32.0)
            $0.bottom.equalToSuperview().inset(32.0)
            $0.height.equalTo(40.0)
        }
    }
}
