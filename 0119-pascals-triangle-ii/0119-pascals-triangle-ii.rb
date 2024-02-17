# @param {Integer} num_rows
# @return {Integer[][]}
def get_row(row_index)
  output = []
  (0...row_index+1).each { |i|
    output[i] = []
    (0..i).each { |j|
      output[i][j] = (j == 0 || j == i ? 1 : output[i-1][j-1] + output[i-1][j])
    }
  }
  output.last
end