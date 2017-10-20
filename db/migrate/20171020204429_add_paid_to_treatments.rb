class AddPaidToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :paid, :boolean
  end
end
