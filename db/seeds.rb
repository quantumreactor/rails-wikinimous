# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Limpiando base de datos..."
Article.destroy_all
puts "La base de datos ha sido limpiada"

puts "Creating records for database, hold on..."
100.times do
  article = Article.create(
    title: Faker::Books::CultureSeries.planet,
    content: Faker::Books::Lovecraft.paragraph
  )
  puts "Article #{article.id} is created"
end
 
puts "Hecho"

