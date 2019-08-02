class Article < ApplicationRecord
  # establce conexión uno a uno
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
