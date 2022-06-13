# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

records = File.foreach(Rails.root.join('db/quotes.csv')).map.with_index do |line, i|
  next if i == 0
  title, author = line.chomp.split(',')
  {
    id: i, title: title, author: author
  }
end
Quote.upsert_all(records[1..-1])
