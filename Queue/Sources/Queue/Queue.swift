//
//  Queue.swift
//  Queue
//
//  Created by Mohamed Afsar on 27/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import DoublyLinkedList

open class Queue<T: Equatable>: Queueable, ExpressibleByArrayLiteral {
    // MARK: Public IVars
    public var first: T? { return self.list.first }
    public var last: T? { return self.list.last }
    public var count: Int { return self.list.count }
    public var isEmpty: Bool { return self.list.isEmpty }
    
    // MARK: Private IVars
    private let list = DoublyLinkedList<T>()
    
    // MARK: Initialization
    required public convenience init(arrayLiteral elements: T...) {
        self.init()
        self.list.append(elements)
    }
    
    public convenience init(_ element: T) {
        self.init()
        self.list.append(element)
    }
    
    public convenience init(_ elements: [T]) {
        self.init()
        self.list.append(elements)
    }

    // MARK: Open Manipulating Functions
    open func enqueue(_ element: T) {
        self.list.append(element)
    }
    
    open func enqueue(_ elements: [T]) {
        self.list.append(elements)
    }
    
    open func dequeue() -> T? {
        guard let element = self.list.first else {
            return nil
        }
        self.list.removeFirst()
        return element
    }
    
    open func dequeue(_ element: T) -> Bool {
        return self.list.remove(element)
    }
    
    // MARK: Open Reading Functions
    open func peek() -> T? {
        return self.list.first
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return self.list.description
    }
}
