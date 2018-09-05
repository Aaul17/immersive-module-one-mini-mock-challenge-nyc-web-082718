class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book_obj|
      book_obj.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    word_array = self.books.map do |book_obj|
      book_obj.word_count
    end
    word_array.inject(0) do |sum, x|
      sum + x
    end
  end

  def self.most_words
    word_array = self.all.map do |author_obj|
      author_obj.total_words
    end.sort
    self.all.select do |author_obj|
       if author_obj.total_words == word_array[-1]
         author_obj
       end
    end
  end

end
