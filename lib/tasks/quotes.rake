namespace :quotes do
  task add_quote_about_martys_cycle: :environment do
    quote = Quote.create
    line = Line.where(text: 'Hiya Marty.').first
    quote.lines << line
    quote.lines << Line.find(line.id + 1)
    quote.lines << Line.find(line.id + 2)
  end
end
