class UpdateRosehipName < ActiveRecord::Migration
  def change
    rename_column :treatments, :resehip, :rosehip
  end
end
