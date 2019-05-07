class ChangeCompletedAtToBeDatetimeInJobs < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :completed_at, :datetime
  end
end
