# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 't@t.com', name: 'Bnj', password: '1234pass', password_confirmation: '1234pass')
category = Category.create(name: 'ruby')
Post.create(user_id: user.id, category_id: category.id, title: 'Post 1', content: 'test test test test test test test test test test')
Post.create(user_id: user.id, category_id: category.id, title: 'Post 2', content: 'test test test test test test test test test test')
Post.create(user_id: user.id, category_id: category.id, title: 'Post 3', content: 'test test test test test test test test test test')
Post.create(user_id: user.id, category_id: category.id, title: 'Post 4', content: 'test test test test test test test test test test')
Post.create(user_id: user.id, category_id: category.id, title: 'Post 5', content: 'test test test test test test test test test test')

