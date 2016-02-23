require_relative "../models/tutorial.rb"

Tutorial.destroy_all
[
  {
    title: "Michael Hartl's Rails Tutorial",
    URL: "https://www.railstutorial.org/book",
    author: "Michael Hartl",
    description: "Michael Hartl's epic tutorial covers everything from installing Rails to using Github, deploying on Heroku and writing tests. It takes awhile to get through but once you've finished you'll be set to start writing your own apps. - @kateray",
    difficulty: "Beginer",
    vote: 5,
    category_id: "Rails"
  },
  {
    title: "iOS Programming: The Big Nerd Ranch Guide",
    URL: "http://www.amazon.com/iOS-Programming-Ranch-Edition-Guides/dp/0321942051",
    author: "Joe Conway",
    description: "Big Nerd Ranch is one of the leading publishers of mobile app dev books. This book is extremely in-depth and teaches you a lot about Objective C and some theory around iOS dev. - @kateray",
    difficulty: "Beginner",
    vote: 5,
    category_id: "iOS"
  },
  {
    title: "Make a ToDo app",
    URL: "http://backbonejs.org/docs/todos.html",
    author: "Jérôme Gravel-Niquet",
    description: "Great simple example Backbone app. Has a model, view, and collection, and persists data locally using LocalStorage. - @kateray",
    difficulty: "Beginner",
    vote: 3,
    category_id: "Backbone"
  },
  {
    title: "The Node Beginner Book",
    URL: "http://www.nodebeginner.org/",
    author: "Manuel Kiessling",
    description: "A very comprehensive introduction to Node and Javascript. - @kateray",
    difficulty: "Beginner",
    vote: 3,
    category_id: "Node"
  },

 {
   title: "Real Python",
   URL: "https://realpython.com/",
   author: "Fletcher Heisler",
   description: "Real Python teaches Python and web development from the ground up, everything from the basic primitives to web scraping to data visualization and all things web development!",
   difficulty: "Beginer",
   vote: 4,
   category_id: "Python"
 }
].each do |tutorial|
  Tutorial.create!(tutorial)
end