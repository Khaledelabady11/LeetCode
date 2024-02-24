# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
   column_title.each_char.inject(0) { |num, char| num*26 + char.ord - 64 } 
end