class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date_time, :datetime
    add_column :events, :ticket_url, :text
    add_column :events, :venue, :text
  end
end
