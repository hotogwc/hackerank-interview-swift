//
//  PathSumII.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/30.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
    
    var result = [[Int]]()
    var currentPath = [Int]()
    pathSumRecursive(node: root, currentPath: &currentPath, result: &result, sum: sum)
    return result
}


func pathSumRecursive(node: TreeNode?, currentPath: inout [Int], result: inout [[Int]], sum: Int) {
    
    guard let node = node else { return }
    
    currentPath.append(node.val)
    if node.left == nil, node.right == nil {
        if currentPath.reduce(0, +) == sum {
            result.append(currentPath)
        }
    } else {
        pathSumRecursive(node: node.left, currentPath: &currentPath, result: &result, sum: sum)
        pathSumRecursive(node: node.right, currentPath: &currentPath, result: &result, sum: sum)
    }
    currentPath.removeLast()
}
