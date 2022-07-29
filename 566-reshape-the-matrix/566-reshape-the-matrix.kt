class Solution {
           
        fun matrixReshape(mat: Array<IntArray>, r: Int, c: Int): Array<IntArray> {
        if (r * c != mat.size * mat[0].size) {
            return mat // if the new size is illegal
        }
		
        var list = mutableListOf<Int>()
        for (i in mat) {
            for (j in i) list.add(j)
        }
		
        var currentIndex = 0
        
        val new = Array(r) { IntArray(c) }
        for (i in new.indices) {
            val row = new[i]
            for (j in row.indices) {
                new[i][j] = list[currentIndex]
                currentIndex++
            }
        }
        
        return new
    }
}   
       
        
   /* var le= mutableListOf<Int>()
    
    mat.toList().forEach {
        it.forEach { i->
            le.add(i)
        }
    }
   var index=le.size/r
   if (index<=0) index=le.size/c
    return le.chunked(index)*/

