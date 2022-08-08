//
//  AppViewController.swift
//  AppStore
//
//  Created by Yujean Cho on 2022/07/22.
//

import SnapKit
import UIKit

final class AppViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical // 세로
        stackView.distribution = .equalSpacing
        stackView.spacing = 0.0 // stackView 는 subView 의 높이에 맞게 정하게 된다.
        
        let featureSectionView = FeatureSectionView(frame: .zero)
        let rankingFeatureSectionView = RankingFeatureSectionView(frame: .zero)
        let exchangeCodeButtonView = ExchangeCodeButtonView(frame: .zero)
        
        
        // H.I.G, scroll 을 다 내렸을 때 여유있도록
        let spacingView = UIView()
        spacingView.snp.makeConstraints {
            $0.height.equalTo(50.0)
        }
        
        [
            featureSectionView,
            rankingFeatureSectionView,
            exchangeCodeButtonView,
            spacingView
        ].forEach {
            stackView.addArrangedSubview($0)
        }
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        setupLayout()
    }
}

private extension AppViewController {
    func setupNavigationController() {
        navigationItem.title = "앱"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true // 무슨 일이 있어도 largeTitle 만 표시
    }
    
    func setupLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview() // 모서리 scrollView 와 동일
            $0.width.equalToSuperview() // width 고정, 세로 scroll 만 가능하도록
        }
        
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
