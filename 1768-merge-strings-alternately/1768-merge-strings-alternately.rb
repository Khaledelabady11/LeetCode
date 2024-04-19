# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    max = [word1.size, word2.size].max
    new_word = []
    (0..max).each do |i|
        new_word.append(word1[i]) if word1[i]
        new_word.append(word2[i]) if word2[i]
    end
    new_word.join('')
end