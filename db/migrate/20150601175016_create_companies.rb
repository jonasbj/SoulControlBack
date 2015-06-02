class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to :location, index:true
      t.belongs_to :area, index:true
      t.string :name
      t.string :website
      t.timestamps
    end
  end
end
