class Experience < ApplicationRecord
  belongs_to :student

  validates :start_date, :end_date, :job_title, :company_name, presence: true
end
