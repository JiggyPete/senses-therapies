class ChangeOutcomesColumnTypeToText < ActiveRecord::Migration
  def change
    change_column :treatments, :outcome, :text
  end
end
