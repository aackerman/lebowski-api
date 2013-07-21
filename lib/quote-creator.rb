require 'json'

filepath = File.expand_path('../public/lebowski.json', '.')
file = File.read(filepath)
data = JSON.parse(file)
quotes = data['quotes']

current_setpath = File.expand_path('../public/lebowski-sets.json', '.')
saved_file = File.read current_setpath
saved_sets = JSON.parse(saved_file)
last_quote = saved_sets.flatten.last

sets = saved_sets || []
set_indices = []
set = []

quotes.slice(last_quote, quotes.size).each_with_index do |quote, i|
  puts quote['text']
  puts "\nAdd this quote to the current set? y/n/next \n\n"
  puts JSON.pretty_generate(set)
  puts "\n\n"

  case gets.chomp
  when 'n'
    next
  when 'y'
    set.push quote
    set_indices.push i
    puts "\e[H\e[2J"
  when 'next'
    sets.push set_indices
    set = []
    set_indices = []
    puts "\e[H\e[2J"
    redo
  when 'quit'
    sets.push set
    break;
  end
end


File.open current_setpath, "w" do |f|
  f.write JSON.pretty_generate(sets)
end
