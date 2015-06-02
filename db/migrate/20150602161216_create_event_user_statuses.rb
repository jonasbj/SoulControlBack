class CreateEventUserStatuses < ActiveRecord::Migration
  def change
    create_table :event_user_statuses do |t|
      t.string :status
      t.belongs_to :user, index:true
      t.belongs_to :event, index:true
      t.timestamps
    end
  end
end
