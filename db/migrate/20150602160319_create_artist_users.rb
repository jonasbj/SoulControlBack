class CreateArtistUsers < ActiveRecord::Migration
  def change
    create_table :artist_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :artist, index: true
      t.timestamps
    end
  end
end
