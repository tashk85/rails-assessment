class Listing < ApplicationRecord
  belongs_to :user
  has_many :quotes
  has_one :job
  has_one_attached :design_file
end
