//
//  Queueable.swift
//  Queue
//
//  Created by Mohamed Afsar on 27/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import Foundation

public protocol Queueable {
    // Types
    associatedtype E
    
    // Variables
    var first: E? { get } // Element at the beginning of the Queue
    var last: E? { get } // Element at the end of the Queue
    var count: Int { get } // Items count
    var isEmpty: Bool { get } // Empty state
    
    // Functions
    func enqueue(_ key: E) // Enqueues an element
    func dequeue() -> E? // Dequeues an element
    func peek() -> E? // Element at the beginning of Queue
}
