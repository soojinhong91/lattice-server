# README

Frontend hosted at: https://lattice-client.netlify.app/
Back end deployed at: https://lattice-server.herokuapp.com/projects

Welcome to Lattice a React frontend Rails backend Trello clone project by Soojin Hong and Jonathan MacMillan built in a week for our third project as part of the General Assembly Software Engineering Immersive Remote.

The purpose of this website is to allow users to create different Kanban style Project boards (called projects) where they can add lists (called cards) with individual items (called tasks). Multiple users can edit shared projects simultaneously, and all modifications (create/edit/delete) update the database in real time and on a single React page.


There are four databases running all with CRUD systems setup. One for Users which includes Session controllers, password authentication and encryption using the Ruby Gem bcrypt.

Users have a HABTM relationship with Projects. Otherwise Projects have many Cards, and Cards have many Tasks.

Technology used:

Heroku
GitHub
Ruby on Rails
Ruby gems including: bcrypt, pry-rails, rack-cors, axios
PostgreSQL

The following are our goals as we continue to develop the backend of this website:

 [ ] Right now on login any errors create a default to logging in the first user. This should be updated to logging in the appropriate user. This error I believe lies in the user, session, or application controller. It is a problem with authentication.
 [ ] Right now the root page throws an error because all the database information is stored in extensions ('/projects' for example). We'd like to solve this either with a reroute or with some admin accessible data on the root page.
 [ ] Allow editing of all four databases.
 [ ] Allow deleting of cards and tasks.
 [ ] Clean up pieces of dead code.
