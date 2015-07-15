class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.belongs_to :company, index:true
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.boolean :active, :default => true
      t.string :phone, :null => false, :default => ""
      t.string :avatar, :null => false, :default => ""
      t.string :description, :null => false, :default => ""
      t.string :avatar
      t.timestamps
    end
  end
end
