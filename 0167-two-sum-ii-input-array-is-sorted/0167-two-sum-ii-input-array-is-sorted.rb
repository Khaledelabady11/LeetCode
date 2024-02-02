# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
   hash = {}
    nums.each_with_index do |n, i|
        if hash[target - n]
            return [hash[target - n], i+1]
        else
            hash[n] = i+1
        end
    end 
end