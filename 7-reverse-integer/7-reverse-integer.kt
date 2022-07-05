class Solution {
    fun reverse(x: Int): Int {
        var rev = 0
        var x = x
        while(x != 0) {
            val next = rev * 10
			// Check for overflow by undoing the operation and checking
            if(next / 10 != rev) return 0
            rev = next + x % 10
            x /= 10
        }
        return rev
}
}