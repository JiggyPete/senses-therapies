class UpdateOtherOilsToBeOtherTextfield < ActiveRecord::Migration
  def change
    remove_column :treatments, :other_oils
    add_column :treatments, :other, :string
  end
end
