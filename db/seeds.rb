# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Crear 15 películas aleatorias
15.times do
  Movie.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Crear 15 series aleatorias
15.times do
  Series.create(
    name: Faker::TvShows::Simpsons.character,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Crear 15 documentales aleatorios
15.times do
  DocumentaryFilm.create(
    name: Faker::Lorem.word,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end
