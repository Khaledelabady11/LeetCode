# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    i=0
    if(nums.include?(target))
       return  nums.index(target)
    end
 nums.each do |num|
     if(num < target)
         i+=1
     else
         break
     end
 end
     i
end