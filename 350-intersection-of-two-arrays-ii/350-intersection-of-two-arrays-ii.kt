class Solution {
    fun intersect(nums1: IntArray, nums2: IntArray): IntArray {
       
    var result = ArrayList<Int>()

    var numV2= nums2.toCollection(ArrayList())
    
    repeat(nums1.size){num ->
        
           for((i,num2) in numV2.withIndex()){  
        if(nums1[num] == num2){
            result.add(nums1[num])
            numV2[i] = -1
           break
        }
    }   }
    
   return result.toIntArray()
    }
}