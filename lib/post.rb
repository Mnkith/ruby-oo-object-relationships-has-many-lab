
class Post

  @@all = []
  
  attr_reader :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
    author.posts = self
  end

  def author_name
     @author.name if author != nil
  end

end



