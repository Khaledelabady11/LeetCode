# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
   z = digits.join.to_i
    z+=1
    res = z.to_s.split("")
    res.map do |num|
        num.to_i
    end
end