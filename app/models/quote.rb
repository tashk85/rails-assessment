class Quote < ApplicationRecord
  belongs_to :printer
  belongs_to :listing
  #We don't need to validate has_job because it defaults to false
  validates :total_price, :job_size, :turnaround_time, presence: true

end
