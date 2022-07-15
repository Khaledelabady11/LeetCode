class Solution {
   fun mySqrt(x: Int): Int {
     val error = 0.00001 //define the precision of your result

    var s: Double = x.toDouble()

    while (s - x / s > error) //loop until precision satisfied
    {
        s = (s + x / s) / 2
    }
    return s.toInt()
}

}