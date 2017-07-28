class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.date :date_of_treatment
      t.string :client_name
      t.string :venue
      t.string :consent
      t.text :contra_indications
      t.text :assessment
      t.text :daily_goal
      t.boolean :aromatherapy
      t.boolean :reflexology
      t.boolean :other_therapy
      t.boolean :grapeseed
      t.boolean :sweet_almond
      t.boolean :resehip
      t.boolean :other_oils
      t.string :essentail_oils
      t.string :music
      t.string :lighting
      t.string :outcome

      t.timestamps null: false
    end
  end
end
