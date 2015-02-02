class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.integer :age
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
