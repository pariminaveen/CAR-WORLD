class CreateUeses < ActiveRecord::Migration
  def change
    create_table :ueses do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
