# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed para crear 10 registros aleatorios de usuarios, posts y comentarios

#10.times do
#  User.create(
#    email: Faker::Internet.email,
#    password: 'password'
#  )
#end

# Agregar un usuario adicional
#User.create(
#  email: 'davamo@davamo.cl',
#  password: 'davamo'
#)


# Crear usuarios
User.create([
  { email: 'email1@example.com', password: 'password1' },
  { email: 'email2@example.com', password: 'password2' },
  { email: 'email3@example.com', password: 'password3' }
])

# Crear posts
Post.create([
  { title: 'Título del post 1', content: 'Contenido del post 1', user_id: 1 },
  { title: 'Título del post 2', content: 'Contenido del post 2', user_id: 2 },
  { title: 'Título del post 3', content: 'Contenido del post 3', user_id: 3 }
])

# Crear comentarios
Comment.create([
  { content: 'Comentario 1', post_id: 1, user_id: 2 },
  { content: 'Comentario 2', post_id: 1, user_id: 3 },
  { content: 'Comentario 3', post_id: 2, user_id: 1 },
  { content: 'Comentario 4', post_id: 2, user_id: 3 },
  { content: 'Comentario 5', post_id: 3, user_id: 1 },
  { content: 'Comentario 6', post_id: 3, user_id: 2 }
])
