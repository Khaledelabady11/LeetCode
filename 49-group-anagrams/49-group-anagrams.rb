# @param {String[]} strs
# @return {String[][]}
#Ruby Solution 
def group_anagrams(strs)
    result ={}
    strs.each do |st|
        ch=st.split("").sort().join()
        result[ch] ||=[]
        result[ch].push(st)
    end
    result.values
end