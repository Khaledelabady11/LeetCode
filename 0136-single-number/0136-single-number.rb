# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    set = Set.new
  
  nums.each do |num|
    set.include?(num) ? set.delete(num) : set << num
  end
  
  set.to_a.first
end