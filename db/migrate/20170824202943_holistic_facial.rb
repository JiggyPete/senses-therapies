class HolisticFacial < ActiveRecord::Migration
  def change
    add_column :treatments, :holistic_facial, :boolean
  end
end
