class Job < ApplicationRecord
  belongs_to :listing
  belongs_to :printer
  belongs_to :quote
end
