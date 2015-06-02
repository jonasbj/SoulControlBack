class CreateVenueUsers < ActiveRecord::Migration
  def change
    create_table :venue_users do |t|
      t.belongs_to :venue_role, index:true
      t.belongs_to :user, index:true
      t.belongs_to :venue, index:true
      t.timestamps
    end
  end
end
