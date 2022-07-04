class Solution {
    fun maxArea(height: IntArray): Int {
        var res = 0
        var l = 0
        
        var  r = height.size - 1
        while(l < r){
            if(height[l] < height[r]){
                res = maxOf(res, height[l] * (r - l))
                l++
            }
            else{
                res = maxOf(res, height[r] * (r - l))
                r--
            }
        }
        return res
    }

}