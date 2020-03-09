class Education < ApplicationRecord
  belongs_to :student

  validates :start_date, :end_date, :degree, :university_name, presence: true
end
