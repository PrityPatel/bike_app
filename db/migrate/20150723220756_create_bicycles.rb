class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :url
      t.string :description
      t.string :price

      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
