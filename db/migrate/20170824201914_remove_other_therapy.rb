class RemoveOtherTherapy < ActiveRecord::Migration
  def change
    remove_column :treatments, :other_therapy
  end
end
