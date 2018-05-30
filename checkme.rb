require 'mojinizer'
require_relative 'kana.rb'

$monographs.flatten(1).shuffle.each do |a|
    romaji = a[0]
    hiragana = a[1]
    katakana = a[2]

    puts katakana
    sleep 3
    puts romaji
    sleep 0.5
    puts "\n"

end
