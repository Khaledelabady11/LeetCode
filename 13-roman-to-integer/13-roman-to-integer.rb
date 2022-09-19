# @param {String} s
# @return {Integer}
def roman_to_int(s)
      sum = 0
    
    hash = { "I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000 }
    nums = s.chars.map {|roman| hash[roman] }
    
    nums.each_with_index do |num, index|
        if index == (nums.length - 1)
            sum += num
        else
            num >= nums[index + 1] ? (sum += num)  : (sum += -num)
        end
    end
    
    sum 
    
end