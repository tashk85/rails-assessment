class Listing < ApplicationRecord
  belongs_to :user
  has_many :quotes
  has_one :job
  has_one_attached :design_file
  validates :description, :budget,:due_date, :design_file, presence: true
  validate :file_attached

  private  

  def file_attached

    if !design_file.attached?

      errors.add(:design_file, " - please attach a file to be uploaded." )
    end
  end
end
