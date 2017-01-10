class AddColumnsToTeachers < ActiveRecord::Migration[5.0]
  def change
  	add_column :teachers, :name, :string
  	add_column :teachers, :gender, :string
  	add_column :teachers, :subject, :string
  	add_column :teachers, :address, :string
  	add_column :teachers, :phone, :string
  	add_column :teachers, :qualification, :string
  	add_column :teachers, :experience, :string
  	add_column :teachers, :picture, :string
  end
end
