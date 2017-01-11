class CreateEventAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :event_attachments do |t|
      t.string :picture
      t.references :event, foreign_key: true
      t.timestamps
    end
    add_index :event_attachments, [:event_id, :created_at]
  end
end
