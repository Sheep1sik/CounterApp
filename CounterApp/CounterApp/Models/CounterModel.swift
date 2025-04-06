//
//  CounterModel.swift
//  CounterApp
//
//  Created by 양원식 on 4/6/25.
//

import Foundation
import Combine

class CounterModel {
    @Published var counter: Int = 0
    
    func increment() {
        counter += 1
    }
    
    func decrement() {
        counter -= 1
    }
}
