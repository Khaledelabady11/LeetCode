class Solution {
    fun maxSubArray(nums: IntArray): Int {
         var item = nums[0]
        for (i in 0 until nums.size-1) {
            var temp = nums[i] + nums[i+1]
            if (temp > nums[i+1]) nums[i+1] = temp
            if (nums[i+1] > item) item = nums[i+1]
        }
        return item

    }
}