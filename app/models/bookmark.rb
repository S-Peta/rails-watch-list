class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, uniqueness: { scope: :list, message: "This movie already exist"}
  validates :comment, presence: true, length: { minimum: 6 }
end
