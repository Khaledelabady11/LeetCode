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
# @return {Integer[][]}
def level_order(root)
    result = []
    
    dfs(result, root, 0)
    
    result
end

def dfs(result, node, height)
    return if node.nil?
    
    result << [] if height == result.length
    
    result[height] << node.val
    dfs(result, node.left, height + 1)
    dfs(result, node.right, height + 1)
end