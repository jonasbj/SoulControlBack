class CreateVenueRoles < ActiveRecord::Migration
  def change
    create_table :venue_roles do |t|
      t.string :name
      t.timestamps
    end
  end
end
