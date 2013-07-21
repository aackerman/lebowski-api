# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


filepath = File.expand_path('public/lebowski.json', Rails.root)
file = File.read(filepath)
data = JSON.parse(file)
lines = data['quotes']

names = lines.map { |line| { name: line['name'] } }

Character.create names.uniq!

lines.each do |l|
  Line.create({text: l['text'], character_id: Character.where(name: l['name']).first.id })
end
