//
//  RunBlockAction.swift
//  TweenKit
//
//  Created by Steve Barnegren on 19/03/2017.
//  Copyright © 2017 Steve Barnegren. All rights reserved.
//

import Foundation

class RunBlockAction: TriggerAction {
    
    // MARK: - Public
    
    var onBecomeActive: () -> () = {}
    var onBecomeInactive: () -> () = {}
    
    init(handler: @escaping () -> ()) {
        self.handler = handler
    }
    
    // MARK: - Private
    
    let handler: () -> ()
    public let duration = 0.0
    var reverse: Bool = false
    
    func trigger() {
        handler()
    }
    
    func willBecomeActive() {
        onBecomeInactive()
    }
    
    func didBecomeInactive() {
        onBecomeInactive()
    }
    
    func willBegin() {
    }
    
    func didFinish() {
    }
    
    func update(t: CFTimeInterval) {
        // Do nothing
    }
}
