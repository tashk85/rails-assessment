class Listing < ApplicationRecord
  belongs_to :user
  has_many :quotes
  has_one :job
end
