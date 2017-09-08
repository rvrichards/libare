class CreateLibations < ActiveRecord::Migration[5.0]
  def change
    create_table :libations do |t|
      t.references :user, foreign_key: true
      t.string :libation_name
      t.string :libation_type
      t.float :weight
      t.string :weight_type
      t.string :container_type
      t.string :country_made
      t.string :company_name
      t.string :website
      t.date :date_drank
      t.string :store_purchased
      t.string :city_purchased
      t.string :prov_purchased
      t.string :country_purchased
      t.string :colour
      t.integer :pulp
      t.integer :can_art
      t.integer :can_design
      t.integer :sweet
      t.integer :juice
      t.integer :sip_guzz
      t.integer :flavour
      t.string :buy_again
      t.boolean :carbonated
      t.string :filename
      t.text :comments

      t.timestamps
    end
    add_index :libations, :libation_name
  end
end
