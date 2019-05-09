class Printer < ApplicationRecord
  belongs_to :user
  has_many :quotes
  has_many :jobs

  validates :abn, :printer_model, presence: true

end
