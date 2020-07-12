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
c4 = Card.create :name => 'To Do'
c5 = Card.create :name => 'Doing'
c6 = Card.create :name => 'Done'
puts "#{ Card.count } cards created."

Task.destroy_all
t1 = Task.create :description => 'What Language?'
t2 = Task.create :description => 'Use Bootstrap?'
t3 = Task.create :description => 'Where to Deploy?'
t4 = Task.create :description => 'Datastructure?'
t5 = Task.create :description => 'Any APIs?'
t6 = Task.create :description => 'How many people working on?'
t7 = Task.create :description => 'Any Libraries?'
t8 = Task.create :description => 'How many days to work?'
t9 = Task.create :description => 'One page app?'
t10 = Task.create :description => 'Use Scaffold?'
t11 = Task.create :description => 'Never forget git push'
t12 = Task.create :description => 'Any missing features?'
puts "#{ Task.count } tasks created."




# ===================== Associations ====================================

puts "Tasks and Cards "
c1.tasks << t1 << t2
c2.tasks << t3 << t4
c3.tasks << t5 << t6
c4.tasks << t8 << t7
c5.tasks << t9 << t10
c6.tasks << t11 << t12



puts "Cards and Projects"
p1.cards << c1 << c2
p2.cards << c3
p3.cards << c4
p4.cards << c5
p5.cards << c6

puts "Projects and Users"
u1.projects << p3
u2.projects << p2
u3.projects << p1
u4.projects << p4
u5.projects << p5
