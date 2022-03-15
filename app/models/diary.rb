class Diary < ApplicationRecord
  enum weather: { sunny: 0, rainy: 1, cloudy: 2, overcast: 3, thunder: 4, snowy: 5 }

  belongs_to :user

  validates :show_date, presence: true
  validates :weather, presence: true
  validates :content, presence: true
end
