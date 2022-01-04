class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :salary
      t.integer :number_hour
      t.string :employement_type
      t.string :contract_type
      t.references :job, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
