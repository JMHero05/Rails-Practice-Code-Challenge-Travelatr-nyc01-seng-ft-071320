class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def most_recent
    self.posts.last(5)
  end

  def featured_post
    self.posts.max {|post1, post2| post1.likes <=> post2.likes}
  end

  def average_age
    ages = self.bloggers.uniq.map {|blogger| blogger.age}
    ages.inject{ |sum, num| sum + num }.to_f / ages.size
  end

end
