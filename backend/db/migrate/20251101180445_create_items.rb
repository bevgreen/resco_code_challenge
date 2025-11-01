class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :number
      t.string :status
      t.string :image

      t.timestamps
    end
  end
end
