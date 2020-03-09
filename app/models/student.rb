class Student < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :email, :phone_number, presence: true
  validates :email, uniqueness: true

  has_many :experiences
  has_many :educations
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :capstones
end
