# Before we move on from Ruby...

* Remember that learning Ruby is a continuous process
* You still have many resources, exercises and projects to work on in Ruby
* We will be moving our focus over to Rails now, but it is important that you keep looking to improve your Ruby skills
* Many of your skills will improve naturally with experience

---

## Web Application Architecture

![Web Server Diagram](../../images/client-server-diagram-internet.png)

---

# Where does Rails fit in?

* Rails is a web server framework built in Ruby
* It can handle incoming requests from clients and return responses
* Many web servers (e.g. nginx) serve *static* content (i.e. the same page no matter what)
* *Dynamic* web servers, such as Rails, allow you to build intelligent applications that are interactive (e.g. Basecamp)
* Rails can also serve static content (e.g. static HTML pages, images, etc.)
* We will use our Ruby knowledge to write Rails applications

---

# Background on Rails

* Rails is an MVC framework
* Rails was first released by DHH in 2004
* Rails has gained lots of popularity as an easy-to-use framework for prototyping apps
* Rails is one of the best frameworks for testing & TDD
* Rails has evolved a lot over the past decade and made it incredibly easy to do many of the common web app goals (e.g. building APIs, forms, mail, etc.)

---

# The Rails Mantra:

# "Convention over Configuration"

---
# Installing Rails

```
$ gem install rails
$ rails -v
```

---
# Create An App

```
$ rails new movies
```
---
# Explore The App Structure

```
$ cd movies
$ ls
```
---
# Open the app in your editor

```
$ cd movies
$ sublime .
```
---
# Start the server!

```
$ rails server
```
---
## Rails is alive!

* Once the server is running, you can access it at ```localhost:3000```
* The default *port* that it runs on is 3000
* By default, it shows the simple landing index page

---
## Working with Rails as a Static Server

* Try modifying the index page to be different
* Try adding your own pages and accessing them (static .HTML files)
* Try adding images to /public/ and accessing them

---
# Scaffolding

Scaffolds automatically give us the basic functionality for creating, deleting, and editing simple 'resources' in our application. This is also known as "CRUD".

---
# Scaffolding

```
$ rails generate scaffold Movie title year
```

---
# Run the server again

* If you now hit the server again, you get a 'ActiveRecord::PendingMigrationError' error. This means that your migrations have not run yet.
* Migrations are mechanisms for making changes to the database. We won't try to fully understand this yet, but we'll fix it...

---
# Run migrations

```
$ rake db:migrate
```
---
# Run server again!

Navigate to localhost:3000/movies to see your scaffolded Movies functionality.

---

Congratulations! You've built your first Rails app. Take a breath, rejoice, and have a good weekend. Oh, and make sure to finish up the Ruby work! :)