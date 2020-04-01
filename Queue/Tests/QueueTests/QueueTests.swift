import XCTest
@testable import Queue

final class QueueTests: XCTestCase {
    func testExample() {
        let one = "one", two = "two", three = "three", four = "four", five = "five", six = "six"
        
        // First One
        let queue = Queue<String>()
        // First
        XCTAssertEqual(queue.first, nil)
        // Last
        XCTAssertEqual(queue.last, nil)
        // Count
        XCTAssertEqual(queue.count, 0)
        // IsEmpty
        XCTAssertEqual(queue.isEmpty, true)
        
        // Enqueue
        queue.enqueue(one)
        queue.enqueue([two, three, four, five, six])
        
        // First
        XCTAssertEqual(queue.first, one)
        // Last
        XCTAssertEqual(queue.last, six)
        // Count
        XCTAssertEqual(queue.count, 6)
        // IsEmpty
        XCTAssertEqual(queue.isEmpty, false)
        
        
        // Second One
        let queue2: Queue<String> = [one, two, three, four, five, six]
        // Dequeue
        XCTAssertEqual(queue2.dequeue(), one)
        XCTAssertEqual(queue2.count, 5)
        queue2.dequeue(three)
        queue2.dequeue("unknown")
        
        // Peek
        XCTAssertEqual(queue2.peek(), two)
        XCTAssertEqual(queue2.dequeue(), two)
        XCTAssertEqual(queue2.peek(), four)
        print("queue2: \(queue2)")
        
        // Third One
        let queue3 = Queue<String>(one)
        print("queue3: \(queue3)")
        XCTAssertEqual(queue3.dequeue(), one)
        XCTAssertEqual(queue3.dequeue(), nil)
        queue3.enqueue(one)
        queue3.enqueue(two)
        queue3.enqueue(three)
        XCTAssertEqual(queue3.dequeue(), one)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
