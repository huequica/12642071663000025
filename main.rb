require 'miyabi'
require 'romkan'
# for debug
class Debug
  def initialize(constant_value)
    @constant_value = constant_value
  end

  def div
    @constant_value.each do |data|
      if data[1][1]
        puts "#{data[0]} : #{data[1][0]}, #{data[1][1]}"
      else
        puts "#{data[0]} : #{data[1]}"
      end
    end
  end
end

################ main method #################

Single_Replace_str = { '0' => %w[m ai], # 0
                       '1' => %w[i u],  # 1
                       '2' => %w[n o],  # 2
                       '3' => %w[sh a], # 3
                       '4' => %w[ch e], # 4
                       '5' => %w[j i],  # 5
                       '6' => %w[z yu], # 6
                       '7' => %w[d yo], # 7
                       '8' => %w[t ya], # 8
                       '9' => %w[ts ie] }.freeze # 9
# 0 : m, ai
# 1 : i, u
# 2 : n, o
# 3 : sh, a
# 4 : ch, e
# 5 : j, i
# 6 : z, yu
# 7 : d, yo
# 8 : t, ya
# 9 : ts, ie
Double_Replace_str = { '00' => 'p', # 00
                       '11' => 'x', # 11
                       '22' => 'h', # 22
                       '33' => 's', # 33
                       '44' => 'k', # 44
                       '55' => 'w', # 55
                       '66' => 'g', # 66
                       '77' => 'f', # 77
                       '88' => 'b', # 88
                       '99' => 'r' }.freeze # 99
# 00 : p
# 22 : h
# 33 : s
# 44 : k
# 55 : v
# 66 : g
# 77 : f
# 88 : b
# 99 : r

# debug = Debug.new(Single_Replace_str)
# debug.div
# puts ''
# debug = Debug.new(Double_Replace_str)
# debug.div

print '変換文字列を入力>>'
# testcase = readline.chomp!
testcase = '雲仙冥加'
begin
  p testcase = testcase.to_kanhira.to_roma
rescue Mechanize::ResponseCodeError
  p testcase = testcase.to_roma
end
return_str = ''

while testcase != ''

  # 2つ文字を先に判定させてあった場合脱出
  Double_Replace_str.each do |str|
    next unless testcase[0] == str[1]

    testcase.slice!(0)
    return_str += str[0]

    break
    # Double_Replace_str.each
  end

  Single_Replace_str.each do |str|
    str0_length = str[1][0].size - 1
    str1_length = str[1][1].size - 1
    if testcase[0..str0_length] == str[1][0]

      testcase.slice!(0..str0_length)
      return_str += str[0]

    elsif testcase[0..str1_length] == str[1][1]

      testcase.slice!(0..str1_length)
      return_str += str[0]

    end
    # Single_Replace_str.each

    # if d_flag != true
  end
  # while testcase
end
puts return_str
