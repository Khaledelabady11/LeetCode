class Solution {
    fun removeDuplicates(nums: IntArray): Int {
       var res=nums.distinct()
    for(i in 0 until res.size){
        nums[i]=res[i]
    }

    return res.size
}
}