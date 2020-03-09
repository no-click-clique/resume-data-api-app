class Capstone < ApplicationRecord
  belongs_to :student

  validates :name, :description, :url, presence: true
end
