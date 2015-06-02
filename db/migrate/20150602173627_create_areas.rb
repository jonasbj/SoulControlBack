class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :postcode
      t.string :city
      t.timestamps
    end
  end
end
