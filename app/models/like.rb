class Like < ApplicationRecord
  belongs_to :user
  has_one :pine

end
