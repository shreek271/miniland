class CreateFaculties < ActiveRecord::Migration[5.0]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :gender
      t.string :address
      t.string :phone
      t.string :email
      t.string :subject
      t.string :qualification
      t.string :experience
      t.timestamps
    end
  end
end
