# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Jonathan', :email => 'aaa@ga.co', :password_digest => 'chicken', :admin => TRUE
u2 = User.create :name => 'Soojin', :email => 'bbb@ga.co', :password_digest => 'chicken', :admin => TRUE
u3 = User.create :name => 'Joel', :email => 'ccc@ga.co', :password_digest => 'chicken', :admin => FALSE
u4 = User.create :name => 'Aleks', :email => 'ddd@ga.co', :password_digest => 'chicken', :admin => FALSE
u5 = User.create :name => 'Lay', :email => 'eee@ga.co', :password_digest => 'chicken', :admin => FALSE
puts "#{ User.count } users created."

Project.destroy_all
p1 = Project.create :name => 'Tic Tac Toe'
p2 = Project.create :name => 'Chess'
p3 = Project.create :name => 'Space Invaders'
p4 = Project.create :name => 'T-Rex Runner'
p5 = Project.create :name => 'Tetris'
puts "#{ Project.count } projects created."

Card.destroy_all
c1 = Card.create :name => 'To Do'
c2 = Card.create :name => 'Doing'
c3 = Card.create :name => 'Done'
puts "#{ Card.count } cards created."

Task.destroy_all
Task.create :description => 'What Language?'
Task.create :description => 'Use Bootstrap?'
Task.create :description => 'Where to Deploy?'
Task.create :description => 'Datastructure?'
Task.create :description => 'Any APIs?'
Task.create :description => 'How many people working on?'
Task.create :description => 'Any Libraries?'
Task.create :description => 'How many days to work?'
Task.create :description => 'One page app?'
Task.create :description => 'Use Scaffold?'
Task.create :description => 'Never forget git push'
Task.create :description => 'Any missing features?'
puts "#{ Task.count } tasks created."
