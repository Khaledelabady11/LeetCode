# @param {Integer[]} nums
# @param {Integer} k
# @return {Float[]}
def median_sliding_window(nums, k)
  result = []
  left = 0
  window = []

  nums.each do |num|
    window.bsearch_insert(num)
    if window.length == k
      result << window.median
      window.bsearch_delete(nums[left])
      left += 1
    end
  end

  result
end

class Array
  def bsearch_delete(num)
    index = bsearch_index { |n| n >= num }
    delete_at(index) if index && self[index] == num
  end

  def bsearch_insert(num)
    index = bsearch_index { |n| n >= num } || length
    insert(index, num)
  end

  def median
    mid = length / 2
    length.odd? ? self[mid] : (self[mid - 1] + self[mid]) / 2.0
  end
end

