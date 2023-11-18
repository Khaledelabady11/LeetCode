# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    add_two_numbers_with_overflow(l1, l2, false)
end

def add_two_numbers_with_overflow(l1, l2, overflow)
    return unless l1 || l2 || overflow
    val = (l1&.val || 0) + (l2&.val || 0) + (overflow ? 1 : 0)
    val -= 10 if (overflow = val >= 10)
    ListNode.new(val, add_two_numbers_with_overflow(l1&.next, l2&.next, overflow))
end