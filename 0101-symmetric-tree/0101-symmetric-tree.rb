# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    symmetric_trees(root.left,root.right)
end
def symmetric_trees(node1, node2)
  return true if node1.nil? && node2.nil?
  return false if node1&.val != node2&.val

  symmetric_trees(node1.left, node2.right) && symmetric_trees(node1.right, node2.left)
end