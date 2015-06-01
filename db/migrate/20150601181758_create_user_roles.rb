class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      belongs_to :user
      belongs_to :role
      t.timestamps
    end
  end
end
