require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Bob")
a2 = Author.new("Anne")
a3 = Author.new("Emily")
b1 = Book.new(a1, "Book 1", 100)
b2 = Book.new(a1, "Book 2", 350)
b3 = Book.new(a2, "Book 3", 400)
b4 = Book.new(a3, "Book 4", 200)

binding.pry
