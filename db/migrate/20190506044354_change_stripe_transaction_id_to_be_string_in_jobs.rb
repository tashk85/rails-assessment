class ChangeStripeTransactionIdToBeStringInJobs < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :stripe_transaction_id, :string
  end
end
