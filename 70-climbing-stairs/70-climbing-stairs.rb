# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
 steps = [0, 1, 2]
  
  3.upto(n) do |t|
    steps[t] = steps[t-1] + steps[t-2]
  end
    
  steps[n]
end