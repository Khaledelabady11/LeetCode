class MyQueue() {
    val input = ArrayDeque<Int>()
    val output = ArrayDeque<Int>()
    
    fun push(x: Int) {
        
        //reverse the "queued" stack back to original order
        while(output.isNotEmpty()) {
            input.addLast(output.removeLast())
        }
        
        //add new item
        input.addLast(x)    
        
        // reverse back to the queued style
        while(input.isNotEmpty()) {
            output.addLast(input.removeLast())
        }
    }

    fun pop(): Int {
        return output.removeLast()
    }

    fun peek(): Int {
        return output.last()
    }

    fun empty(): Boolean {
        return output.isEmpty()
    }

}

/**
 * Your MyQueue object will be instantiated and called as such:
 * var obj = MyQueue()
 * obj.push(x)
 * var param_2 = obj.pop()
 * var param_3 = obj.peek()
 * var param_4 = obj.empty()
 */