class Solution {
fun strStr(haystack: String, needle: String): Int {
    var index=0
    var c=false
    var nLen=0
    if(needle.isEmpty()) return 0
    if(needle.length>haystack.length)return -1
    nLen=needle.length
    for (i in 0 ..haystack.length-1){
        if(haystack.subSequence(i,nLen)==needle){
            index=i
            c=true
        }
        else if (nLen<haystack.length)
            nLen++
    }
    if (c==false) return -1


    return index
}
}