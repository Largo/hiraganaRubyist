#require 'mojinizer'
require_relative 'kana.rb'

dataset = $monographs.concat($digraphs).concat($monographs_with_diacritics).concat($digraphs_with_diacritics).flatten(1)

dataset.shuffle.each do |a|
  if not a[0].empty?
      romaji = a[0]
      hiragana = a[1]
      katakana = a[2]

      puts hiragana + "  =  " + katakana
      sleep 3
      puts romaji
      sleep 0.5
      puts "\n"
  end
end
