//
//  ViewController.swift
//  QueueExample
//
//  Created by Mohamed Afsar on 28/03/20.
//  Copyright © 2020 Jambav. All rights reserved.
//

import UIKit
import Queue

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let one = "one", two = "two", three = "three", four = "four", five = "five", six = "six"
        
        // First One
        let queue = Queue<String>()
        // First
        print("queue.first: \(String(describing: queue.first))")
        // Last
        print("queue.last: \(String(describing: queue.last))")
        // Count
        print("queue.count: \(queue.count)")
        // IsEmpty
        print("queue.isEmpty: \(queue.isEmpty)")
        
        // Enqueue
        queue.enqueue(one)
        queue.enqueue([two, three, four, five, six])
        
        // First
        print("queue.first: \(String(describing: queue.first))")
        // Last
        print("queue.last: \(String(describing: queue.last))")
        // Count
        print("queue.count: \(queue.count)")
        // IsEmpty
        print("queue.isEmpty: \(queue.isEmpty)")
        
        
        // Second One
        let queue2: Queue<String> = [one, two, three, four, five, six]
        // Dequeue
        print("queue2.dequeue(): \(String(describing: queue2.dequeue()))")
        print("queue2.count: \(queue2.count)")
        print("queue2.dequeue(three): \(queue2.dequeue(three))")
        print("queue2.dequeue(\"unknown\"): \(queue2.dequeue("unknown"))")
        
        // Peek
        print("queue2.peek(): \(String(describing: queue2.peek()))")
        print("queue2.dequeue(): \(String(describing: queue2.dequeue()))")
        print("queue2.peek(): \(String(describing: queue2.peek()))")
        print("queue2: \(queue2)")
        
        // Third One
        let queue3 = Queue<String>(one)
        print("queue3: \(queue3)")
    }
}

