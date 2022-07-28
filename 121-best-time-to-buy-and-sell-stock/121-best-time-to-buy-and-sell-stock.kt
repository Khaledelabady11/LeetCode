class Solution {
fun maxProfit(prices: IntArray): Int {
    
      
    
     prices.foldIndexed<Int>(prices[0]) { i, min, num ->
		prices[i] = num - min
		if (num < min) num else min
   }
   return prices.max() ?: 0
    
    
    
    
    //another solution
   /* var item=0
    var res=0
    var m:List<Int>?=null
    val s :IntArray =prices.sortedArrayDescending()
    val result = prices.contentEquals(s)
    if (result) return 0
    else{
   for (i in 0 ..prices.size) {
       if (i < prices.size - 1) {
           m = prices.toList().subList(i + 1, prices.size)
           val max = m.max()
           if (max!! > prices[i]) {
               res = max - prices[i]
               if (res > item) {
                   item = res
               }
           }
       }
   }

   }
    return item
*/
}

}