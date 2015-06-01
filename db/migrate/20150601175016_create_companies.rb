class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :country
      t.string :address
      t.timestamps
    end
  end
end
