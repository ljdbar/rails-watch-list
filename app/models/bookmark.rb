class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  # add_index :unique_pair, %i[movie_id list_id], unique: true
  # validate :validate_users_are_unique

  # private

  # def validate_users_are_unique
  #   if self.class.where(movie_id: movie_id, list_id: list_id)
  #               .or(self.class.where(movie_id: list_id, list_id: movie_id))
  #               .exists?
  #     errors.add(:base, 'Movie id and List id combination exists!')
  #   end
  # end
end
