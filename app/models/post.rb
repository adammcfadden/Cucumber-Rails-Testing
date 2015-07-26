class Post < ActiveRecord::Base
  validates :name, :body, presence: true


end
