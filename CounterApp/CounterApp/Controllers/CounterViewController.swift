//
//  ViewController.swift
//  CounterApp
//
//  Created by 양원식 on 4/6/25.
//

import UIKit
import Combine

class CounterViewController: UIViewController, CounterViewDelegate {
    
    
    private let counterView = CounterView()
    private var model = CounterModel()
    private var cancellables = Set<AnyCancellable>()
    
    override func loadView() {
        self.view = counterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
        counterView.delegate = self
        model.$counter // 값이 변할 때마다 이벤트를 보내주는 Publisher가 됨
            .receive(on: RunLoop.main)
        // Combine의 모든 이벤트는 백그라운드 스레드에서 발생할 수도 있다.
        // 하지만 UI 업데이트는 항상 메인 스레드에서 해야 함 → 아니면 앱이 크래시 날 수 있음.
        // 그래서 이 코드는 UI 업데이트를 안전하게 메인 스레드에서 하게 해주는 역할을 함.
            .sink { [weak self] counter in
                self?.counterView.updateCountLabel(with: counter)
            }
            .store(in: &cancellables)
    }
    
    func counterViewDidTapIncrementButton(_ counterView: CounterView) {
        model.increment()
    }
    
    func counterViewDidTapDecrementButton(_ counterView: CounterView) {
        model.decrement()
    }
    
    func counterViewDidTapReSetButton(_ counterView: CounterView) {
        model.reset()
    }

}

