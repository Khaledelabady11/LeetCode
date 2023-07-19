# @param {Integer[]} nums
# @return {Integer}
def maximum_gap(nums)
    n = nums.sort
    res = []
    s = n.length
    if s <2 
        return 0
    end
    for i in 0..s-1
        if i < s-1
           res<< n[i+1]-n[i]
        end
    end
    res.max
end