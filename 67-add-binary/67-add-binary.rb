# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    res = a.to_i(2) + b.to_i(2)
    res.to_s(2)
end