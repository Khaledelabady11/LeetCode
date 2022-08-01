class Solution {
   fun isAnagram(s: String, t: String): Boolean {
    var ss=s.toCharArray().toMutableList()
    var tt= t.toCharArray()
    if (s.length!=t.length) return false
    for (i in tt){
        if (!ss.remove(i)){
            return false
        }
    }
    return true
}
}