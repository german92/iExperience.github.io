# Working with APIs

---

Today we will build simple Ruby scripts that pull data from APIs (application programming interfaces). These are open web applications built by others that are freely accessibly via the internet. 

---
## REST APIs

* Often, when looking for APIs, we look for REST APIs
* REST is a methodology of building APIs which makes them easier to use
* We'll learn more about how APIs are built, and what REST is later on
* For now, we will just learn to use the APIs

---
## Data.Gov

The White House has an open, RESTful API that is freely consumable for the public. It contains lots of different resources that we can access. For today's lesson, we will be looking at the White House Petitions API

---
## Getting Started

Whenever we want to import data from an API, we check out the website looking for API documentation. This tells the structure of the API (in other words, what URLs to hit to get what kind of data), and other things like whether it requires authentication. Luckily, data.gov does not require any authentication.

#### https://petitions.whitehouse.gov/developers#petitions-index

---
## Reddit API

We will now build a similar application that hits the Reddit API. Let's do it!

#### http://www.reddit.com/dev/api#GET_hot

---
# Recap

* We learned how to use the RestClient gem to make API calls
* We learned how to read API documentation online
* We learned how to manipulate the data we get back
* We learned how to pull and present data interactively

---
# Exercises

Take the example apps we just built, and try building similar apps for your favorite website APIs.