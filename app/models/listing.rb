class Listing < ApplicationRecord
  
  belongs_to :user
  has_many :quotes
  has_one :job
  has_one_attached :design_file
  validates :description, :budget,:due_date, :design_file, presence: true
end
