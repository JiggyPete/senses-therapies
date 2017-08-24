class IndianHeadMassage < ActiveRecord::Migration
  def change
    add_column :treatments, :indian_head_massage, :boolean
  end
end
