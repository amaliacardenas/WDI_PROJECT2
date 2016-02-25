require_relative "../app/models/tutorial.rb"
require_relative "../app/models/category.rb"

Tutorial.destroy_all
Category.destroy_all

categories = [
  { 
    title: "Rails",
    icon: "http://svgporn.com/logos/rails.svg"
  },
  { 
    title: "iOS",
    icon: "http://svgporn.com/logos/ios.svg"
  },
  { 
    title: "Backbone",
    icon: "http://svgporn.com/logos/backbone-icon.svg"
  },
  { 
    title: "Node",
    icon: "http://svgporn.com/logos/nodejs-icon.svg"
  },
  { 
    title: "Python",
    icon: "http://svgporn.com/logos/python.svg"
  },
  { 
    title: "Javascript",
    icon: "http://svgporn.com/logos/javascript.svg"
  },
  { 
    title: "Ruby",
    icon: "http://svgporn.com/logos/ruby.svg"
  },
  { 
    title: "HTML",
    icon: "http://svgporn.com/logos/html-5.svg"
  },
  { 
    title: "CSS",
    icon: "http://svgporn.com/logos/css-3.svg"
  }
]

categories.each do |category|
  Category.create!(category)
end

tutorials = [
  {
    title: "Michael Hartl's Rails Tutorial",
    URL: "https://www.railstutorial.org/book",
    author: "Michael Hartl",
    description: "Michael Hartl's epic tutorial covers everything from installing Rails to using Github, deploying on Heroku and writing tests. It takes awhile to get through but once you've finished you'll be set to start writing your own apps. - @kateray",
    difficulty: "Beginner",
    category_id: Category.where(title: "Ruby")[0].id
  },
  {
    title: "iOS Programming: The Big Nerd Ranch Guide",
    URL: "http://www.amazon.com/iOS-Programming-Ranch-Edition-Guides/dp/0321942051",
    author: "Joe Conway",
    description: "Big Nerd Ranch is one of the leading publishers of mobile app dev books. This book is extremely in-depth and teaches you a lot about Objective C and some theory around iOS dev. - @kateray",
    difficulty: "Beginner",
    category_id: Category.where(title: "iOS")[0].id
  },
  {
    title: "Make a ToDo app",
    URL: "http://backbonejs.org/docs/todos.html",
    author: "Jérôme Gravel-Niquet",
    description: "Great simple example Backbone app. Has a model, view, and collection, and persists data locally using LocalStorage. - @kateray",
    difficulty: "Beginner",
    category_id: Category.where(title: "Backbone")[0].id
  },
  {
    title: "The Node Beginner Book",
    URL: "http://www.nodebeginner.org/",
    author: "Manuel Kiessling",
    description: "A very comprehensive introduction to Node and Javascript. - @kateray",
    difficulty: "Beginner",
    category_id: Category.where(title: "Node")[0].id
  },
  {
    title: "Real Python",
    URL: "https://realpython.com/",
    author: "Fletcher Heisler",
    description: "Real Python teaches Python and web development from the ground up, everything from the basic primitives to web scraping to data visualization and all things web development!",
    difficulty: "Beginner",
    category_id: Category.where(title: "Python")[0].id
  }
]

tutorials.each do |tutorial|
  Tutorial.create!(tutorial)
end

# [  
#   {
#     difficulty: "Beginner",
#   },
#   {
#    difficulty: "Intermediate",
#    },
#   {
#     difficulty: "Advanced",
#   }
# ].each do |tutorial|
#   Tutorial.create!(tutorial)
# end

