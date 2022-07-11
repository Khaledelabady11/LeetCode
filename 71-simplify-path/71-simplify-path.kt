class Solution {
    fun simplifyPath(path: String): String {
    return Stack<String>().apply {
        for(it in path.split("/")){
            if(it==".."&& isNotEmpty())
            {
                pop()
            }
            else if (it !="." && it !=".." && it !="")
            { 
                push(it)
            }
        }
    }.joinToString ( "/" , "/")

}
}