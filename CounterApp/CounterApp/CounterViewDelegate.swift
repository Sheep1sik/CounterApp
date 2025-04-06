//
//  CounterViewDelegate.swift
//  CounterApp
//
//  Created by 양원식 on 4/6/25.
//

import UIKit

protocol CounterViewDelegate: AnyObject {
    func counterViewDidTapIncrementButton(_ counterView: CounterView)
    func counterViewDidTapDecrementButton(_ counterView: CounterView)
}
