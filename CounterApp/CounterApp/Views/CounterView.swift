//
//  CounterView.swift
//  CounterApp
//
//  Created by 양원식 on 4/6/25.
//

import UIKit
import SnapKit

class CounterView: UIView {
    
    weak var delegate: CounterViewDelegate?
    
    private let counterNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 45, weight: .bold)
        label.textAlignment = .center
        
        return label
    }()
    
    private let incrementButton: UIButton = {
        let button = UIButton()
        button.setTitle("증가", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        return button
    }()
    
    private let decrementButton: UIButton = {
        let button = UIButton()
        button.setTitle("감소", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setTarget()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        addSubview(counterNumberLabel)
        addSubview(incrementButton)
        addSubview(decrementButton)
        
        counterNumberLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(80)
        }
        
        incrementButton.snp.makeConstraints { make in
            make.centerY.equalTo(counterNumberLabel)
            make.leading.equalTo(counterNumberLabel.snp.trailing).offset(32)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        
        decrementButton.snp.makeConstraints { make in
            make.centerY.equalTo(counterNumberLabel)
            make.trailing.equalTo(counterNumberLabel.snp.leading).offset(-32)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
    }
    
    func updateCountLabel(with counter: Int) {
        counterNumberLabel.text = "\(counter)"
    }
    
    //MARK: - Button Action
    
    private func setTarget() {
        incrementButton.addTarget(self, action: #selector(didTapIncrementButton), for: .touchUpInside)
        
        decrementButton.addTarget(self, action: #selector(didTapDecrementButton), for: .touchUpInside)
    }
    
    @objc private func didTapIncrementButton() {
        delegate?.counterViewDidTapIncrementButton(self)
    }
    
    @objc private func didTapDecrementButton() {
        delegate?.counterViewDidTapDecrementButton(self)
    }

    
}
