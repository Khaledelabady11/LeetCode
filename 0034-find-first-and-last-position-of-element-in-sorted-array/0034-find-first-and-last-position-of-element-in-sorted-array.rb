# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    res =[]
    nums.each_with_index do |num,index|
        if num == target
            res.push(index)
        end
    end
    !res.empty? ? [res.first,res.last] : [-1,-1]
end