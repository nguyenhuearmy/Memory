class CreateRemembers < ActiveRecord::Migration
  def change
    create_table :remembers do |t|
      t.string :name
      t.string :school
      t.text :content

      t.timestamps null: false
    end
  end
end
