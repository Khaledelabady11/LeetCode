class Solution {
    fun canConstruct(ransomNote: String, magazine: String): Boolean {
    var i=0
    if (ransomNote.length>magazine.length) return false
    var m= magazine.toCharArray().toMutableList()
    var r=ransomNote.toCharArray()
   for (it in r){
       if (!m.remove(it)){
           return false
       }
   }

    return true
}
}