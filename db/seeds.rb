Book.destroy_all
Genre.destroy_all

tutorial = Genre.create!(name: 'Tutorial')
advanced = Genre.create!(name: 'Advanced')
manual   = Genre.create!(name: 'Manual')

Book.create!([
  {
    title:       "The Rails 4 Way",
    author:      "Obie Fernandez",
    description: "The Rails™ 4 Way is the only comprehensive, authoritative guide to delivering production-quality code with Rails 4. Kevin Faustino joins pioneering Rails developer Obie Fernandez to illuminate the entire Rails 4 API, including its most powerful and modern idioms, design approaches, and libraries. They present extensive new and updated content on security, performance, caching, Haml, RSpec, Ajax, the Asset Pipeline, and more.",
    amazon_id:   "0321944275",
    rating:      5,
    finished_on: 10.days.ago,
    genres: [manual, advanced]
  },
  {
    title:       "Rails AntiPatterns",
    author:      "Chad Pytel",
    description: "The Complete Guide to Avoiding and Fixing Common Rails 3 Code and Design Problems As developers worldwide have adopted the powerful Ruby on Rails web framework, many have fallen victim to common mistakes that reduce code quality, performance, reliability, stability, scalability, and maintainability. Rails™ AntiPatterns identifies these widespread Rails code and design problems, explains why they’re bad and why they happen—and shows exactly what to do instead. ",
    amazon_id:   "0321604814",
    rating:      4,
    finished_on: 5.days.ago,
    genres: [manual, advanced]
  },
  {
    title:       "Practical Object-Oriented Design in Ruby",
    author:      "Sandi Metz",
    description: "The Complete Guide to Writing More Maintainable, Manageable, Pleasing, and Powerful Ruby Applications Ruby’s widely admired ease of use has a downside: Too many Ruby and Rails applications have been created without concern for their long-term maintenance or evolution. The Web is awash in Ruby code that is now virtually impossible to change or extend. This text helps you solve that problem by using powerful real-world object-oriented design techniques, which it thoroughly explains using simple and practical Ruby examples.",
    amazon_id:   "0321721330",
    rating:      5,
    finished_on: nil,
    genres: [manual]
  },
  {
    title:       "Ruby on Rails Tutorial",
    author:      "Michael Hartl",
    description: "“Ruby on Rails™ Tutorial by Michael Hartl has become a must-read for developers learning how to build Rails apps.” —Peter Cooper, Editor of Ruby Inside Using Rails, developers can build web applications of exceptional elegance and power. Although its remarkable capabilities have made Ruby on Rails one of the world’s most popular web development frameworks, it can be challenging to learn and use. Ruby on Rails™ Tutorial, Second Edition, is the solution. Best-selling author and leading Rails developer Michael Hartl teaches Rails by guiding you through the development of your own complete sample application using the latest techniques in Rails web development. The updates to this edition include all-new site design using Twitter’s Bootstrap; coverage of the new asset pipeline, including Sprockets and Sass; behavior-driven development (BDD) with Capybara and RSpec; better automated testing with Guard and Spork; roll your own authentication with has_secure_password; and an introduction to Gherkin and Cucumber.",
    amazon_id:   "0321832051",
    rating:      5,
    finished_on: nil,
    genres: [tutorial]
  }
])

p "Create #{Book.count} books."