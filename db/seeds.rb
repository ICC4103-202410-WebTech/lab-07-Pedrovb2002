# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

User.create(
  name: 'Pedro Valenzuela',
  email: 'correopv@ejemplo.com',
  password: '12345678'
)

User.create(
  name: 'Juan Perez',
  email: 'correojp@ejemplo.com',
  password: 'password'
)

User.create(
  name: 'Clara Mate',
  email: 'correocm@ejemplo.com',
  password: '87654321'
)

User.create(
  name: 'Lucas Rata',
  email: 'correolr@ejemplo.com',
  password: '00000001'
)

User.create(
  name: 'Max Toledo',
  email: 'correomt@ejemplo.com',
  password: '123654789'
)

Post.create(
  title: 'Post primero',
  content: 'Foto playa',
  published_at: Time.current,
  user_id: 1
)

Post.create(
  title: 'Post segundo',
  content: 'Texto de saludos',
  published_at: Time.current,
  user_id: 2
)

Post.create(
  title: 'Post tercero',
  content: 'Texto de reclamo',
  published_at: Time.current,
  user_id: 3
)

Post.create(
  title: 'Post cuarto',
  content: 'Foto perro',
  published_at: Time.current,
  user_id: 4
)

Post.create(
  title: 'Post quinto',
  content: 'Foto casa',
  published_at: Time.current,
  user_id: 5
)

Post.create(
  title: 'Post sexto',
  content: 'Foto comida',
  published_at: Time.current,
  user_id: 1
)

Post.create(
  title: 'Post septimo',
  content: 'Texto de despedida',
  published_at: Time.current,
  user_id: 2
)

Post.create(
  title: 'Post octavo',
  content: 'Texto de feliz',
  published_at: Time.current,
  user_id: 3
)

Post.create(
  title: 'Post noveno',
  content: 'Foto solo',
  published_at: Time.current,
  user_id: 4
)

Post.create(
  title: 'Post decimo',
  content: 'Foto saltando',
  published_at: Time.current,
  user_id: 5
)

Tag.create(
  name: 'Tag 1'
)

Tag.create(
  name: 'Tag 2'
)

Tag.create(
  name: 'Tag 3'
)

Tag.create(
  name: 'Tag 4'
)

Tag.create(
  name: 'Tag 5'
)