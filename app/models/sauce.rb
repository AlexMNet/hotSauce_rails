class Sauce < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :qty, presence: true
end
