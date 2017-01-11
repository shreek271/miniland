class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :attachment
      t.timestamps
    end
  end
end
