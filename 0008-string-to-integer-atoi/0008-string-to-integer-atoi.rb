# @param {String} s
# @return {Integer}
def my_atoi(s)
    res =s.to_i
    if res < (-2)**31
        return (-2)**31
    elsif res > ((2)**31)-1
        return ((2)**31)-1
    end
    res
    
end