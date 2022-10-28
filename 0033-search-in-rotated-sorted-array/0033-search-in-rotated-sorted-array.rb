# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    nums.each_with_index do |num,index|
        if num==target
            return index
        end
    end
    return -1
end