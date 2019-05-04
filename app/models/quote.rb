class Quote < ApplicationRecord
  belongs_to :printer
  belongs_to :listing
  validates :total_price, :job_size,:turnaround_time, :has_job, presence: true

end
