//
//  CounterView.swift
//  CounterApp
//
//  Created by 양원식 on 4/6/25.
//

import UIKit
import SnapKit

class CounterView: UIView {
    
    private lazy var counterHStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [decrementButton, counterNumberLabel, incrementButton])
        stack.axis = .horizontal
        stack.alignment = .center
        
        return stack
    }()
    
    private let counterNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = .systemFont(ofSize: 45, weight: .bold)
        label.textAlignment = .center
        
        return label
    }()
    
    private let incrementButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        return button
    }()
    
    private let decrementButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        addSubview(counterHStack)
        
        counterHStack.snp.makeConstraints{ make in
            make.center.equalToSuperview()
        }
        
        counterNumberLabel.snp.makeConstraints{ make in
            make.width.equalTo(80)
        }
        
        incrementButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(30)
            make.leading.equalToSuperview().offset(-32)
        }
        
        decrementButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(30)
            make.leading.equalToSuperview().offset(32)
        }
    }
}
