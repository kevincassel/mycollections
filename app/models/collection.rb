class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :video_game
  belongs_to :shop, optional: true
end
