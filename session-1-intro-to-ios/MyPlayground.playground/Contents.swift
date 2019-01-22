//
//  LinkedList.swift
//  Radius
//
//  Created by Kevin Tan on 1/16/19.
//  Copyright © 2019 Radius Inc. All rights reserved.
//

import Foundation

class Node<T: Equatable> {
    var value: T
    var next: Node<T>?
    weak var prev: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedQueue<T: Equatable> {
    private var _size = 0
    var _head: Node<T>?
    var _tail: Node<T>?
    
    var size: Int {
        return _size
    }
    
    init() { }
    
    init(fromArray array: [T]) {
        for element in array.reversed() {
            push(value: element)
        }
    }
    
    func front() -> T? {
        return _tail?.value
    }
    
    @discardableResult func moveToBack(value: T) -> Bool {
        var _traveller = _head
        while let traveller = _traveller {
            if traveller.value == value {
                if traveller.prev == nil && traveller.next == nil {
                    // Only one node, do nothing and return true
                    return true
                }
                
                traveller.prev?.next = traveller.next
                traveller.next?.prev = traveller.prev
                
                traveller.prev = nil
                traveller.next = _head
                _head?.prev = traveller
                _head = traveller
                
                return true
            }
            _traveller = traveller.next
        }
        return false
    }
    
    func push(value: T) {
        let newNode = Node(value: value)
        
        if let head = _head {
            newNode.next = head
            head.prev = newNode
        } else {
            _tail = newNode
        }
        
        _head = newNode
        _size += 1
    }
    
    @discardableResult func pop() -> T? {
        if let tail = _tail {
            let value = tail.value
            
            _tail = tail.prev
            if _tail == nil {
                _head = nil
            }
            
            tail.prev?.next = nil
            tail.prev = nil
            
            _size -= 1
            return value
        } else {
            return nil
        }
    }
    
    func asArray() -> [T] {
        var result = [T]()
        
        var _traveller = _head
        while let traveller = _traveller {
            result.append(traveller.value)
            _traveller = traveller.next
        }
        
        return result
    }
    
    func printOut() {
        var _traveller = _head
        while let traveller = _traveller {
            print(traveller.value)
            _traveller = traveller.next
        }
    }
}

let queue = LinkedQueue<Int>()
queue.push(value: 1)
queue.push(value: 2)
queue.push(value: 3)
queue.push(value: 4)

queue.moveToBack(value: 2)

queue.printOut()
print(queue._head?.next?.value)
print(queue._head?.prev)
print(queue._tail?.value)
print(queue._tail?.next)
