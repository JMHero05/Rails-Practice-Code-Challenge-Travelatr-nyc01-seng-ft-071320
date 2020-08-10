class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination
  default_scope { order(created_at: :asc) }
  validates :content, length: { minimum: 1 }
  validates :title, presence: true

  def add_like
    self.likes += 1
    # redirect_to post_path(@post)
  end

end
