class Quote < ApplicationRecord
  belongs_to :printer
  belongs_to :listing
end
