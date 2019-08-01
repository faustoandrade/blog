class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  private
 # reiniciar el contador de visitas a cero
  # def set_visits_count
  #   self.visits_count || = 0
  # end
end
