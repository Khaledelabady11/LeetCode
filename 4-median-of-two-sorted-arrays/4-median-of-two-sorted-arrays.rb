# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    mid=0
    res =nums1+nums2    
    res.sort!
    if res.size==1
        return res[0]
    end
    res.size%2==0 ? mid=((res[res.size/2]+res[(res.size/2)-1])/2.0) : mid=res[(res.size/2)]
    
end