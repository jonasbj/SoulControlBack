class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :artist, index:true
      t.belongs_to :tour, index:true
      t.belongs_to :status, index:true
      t.belongs_to :venue, index:true
      t.string :fee
      t.string :percentage
      t.datetime :date
      t.timestamps
    end
  end
end
