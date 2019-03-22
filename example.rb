require "#{__dir__}/main"

unzen_lang = Unzen_lang.new
puts unzen_lang.convert(ARGV[0])
# def romkan_conv(text)
#   require 'romkan'
#   text.to_roma
# end
#
# require 'miyabi'
# p hira = '雲仙冥加っぽいナリ'.to_kanhira.to_hira
# p result = romkan_conv(hira)
