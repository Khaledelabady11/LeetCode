class Solution {
    fun isValid(s: String): Boolean {
        var counter=0
        var stack = ArrayDeque<Char>()

        for(i in s){
            if(i=='('  ||    i=='{'   ||  i=='[') {
                stack.push(i)
            }
            
            else if(i == ')' || i == '}' || i == ']')
        {
            if(stack.isEmpty())
                return false;
            else if(i == ')' && stack.peek() != '(')
                return false;
            else if(i == '}' && stack.peek() != '{')
                return false;
            else if(i == ']' && stack.peek() != '[')
                return false;
            
            else 
                stack.pop();
        }
                
        }
       if(stack.isEmpty())
        return true;
    else
        return false;
    }
}