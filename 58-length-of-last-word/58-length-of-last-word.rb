# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    res = s.split(" ")
    res.last.size
end