class Job < ApplicationRecord
  after_create :mark_rejected_quotes
  belongs_to :listing
  belongs_to :printer
  belongs_to :quote

  #If this job is accepted, mark all other quotes on this job as rejected
  def mark_rejected_quotes
    self.listing_id
    self.quote_id

    #if quote has that listing and is not that quote_id update status to rejected
    #Add a column to quotes model that is rejected:true/false
  end
end
