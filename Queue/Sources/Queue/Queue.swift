//
//  Queue.swift
//  Queue
//
//  Created by Mohamed Afsar on 27/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import DoublyLinkedList

open class Queue<T: Equatable>: Queueable, ExpressibleByArrayLiteral, CustomStringConvertible {
    // MARK: Public IVars
    open var first: T? { self._first }
    open var last: T? { self._last }
    open var count: Int { self._count }
    open var isEmpty: Bool { self._isEmpty }
    
    // CustomStringConvertible
    open var description: String { self._description }
    
    // MARK: Private IVars
    private let list = DoublyLinkedList<T>()
    
    // MARK: Initialization
    required public convenience init(arrayLiteral elements: T...) {
        self.init()
        self._enqueue(elements)
    }
    
    public convenience init(_ element: T) {
        self.init()
        self._enqueue(element)
    }
    
    public convenience init(_ elements: [T]) {
        self.init()
        self._enqueue(elements)
    }

    // MARK: Open Manipulating Functions
    open func enqueue(_ element: T) {
        self._enqueue(element)
    }
    
    open func enqueue(_ elements: [T]) {
        self._enqueue(elements)
    }
    
    open func dequeue() -> T? {
        return self._dequeue()
    }
    
    open func dequeue(_ element: T) {
        self._dequeue(element)
    }
    
    // MARK: Open Reading Functions
    open func peek() -> T? {
        self._peek()
    }
}

// MARK: Helper Functions
private extension Queue {
    // MARK: IVars
    var _first: T? { self.list.first }
    var _last: T? { self.list.last }
    var _count: Int { self.list.count }
    var _isEmpty: Bool { self.list.isEmpty }
    
    // CustomStringConvertible
    var _description: String { self.list.description }
    
    // MARK: Open Manipulating Functions
    func _enqueue(_ element: T) {
        self.list.append(element)
    }
    
    func _enqueue(_ elements: [T]) {
        self.list.append(elements)
    }
    
    func _dequeue() -> T? {
        guard let element = self.list.first else {
            return nil
        }
        self.list.removeFirst()
        return element
    }
    
    func _dequeue(_ element: T) {
        self.list.remove(element)
    }
    
    // MARK: Open Reading Functions
    func _peek() -> T? {
        self.list.first
    }
}
