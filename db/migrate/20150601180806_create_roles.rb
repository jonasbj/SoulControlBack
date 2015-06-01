class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :type
      has_many :user_roles
      t.timestamps
    end
  end
end
