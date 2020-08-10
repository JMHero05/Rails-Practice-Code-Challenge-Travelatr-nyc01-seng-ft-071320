class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination
  default_scope { order(created_at: :asc) }

end
