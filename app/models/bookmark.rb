class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }

end


# A movie must have a unique title.
# A list must have a unique name.
# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
