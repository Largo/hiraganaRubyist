require 'mojinizer'
require_relative 'kana.rb'
dataset = $monographs.concat($digraphs).concat($monographs_with_diacritics).concat($digraphs_with_diacritics).flatten(1)

puts "1 for hiragana mode, 2 for katakana mode"
mode = gets.to_i

if mode != 1 and mode != 2
  mode = 1
end


while true
  randomText = ""
  4.times do
    randomText += dataset.sample[mode]
  end

  puts randomText
  answer = gets.strip

  if answer == 'exit' or answer == 'quit'
    exit
  end


  if randomText.romaji == answer
    puts "correct"
  else
    puts "false: #{randomText.romaji}"
  end
end
