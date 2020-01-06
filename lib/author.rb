class Author
  attr_accessor :name
  attr_reader :posts

  def initialize (name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post (post)
    @posts << post
    post.author = self
  end

  def add_post_by_title (post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    Post.all.length
  end
end
