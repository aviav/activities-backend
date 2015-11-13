class AddInFocusToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :in_focus, :boolean, index: true, default: false
  end
end
