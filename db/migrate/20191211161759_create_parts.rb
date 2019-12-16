class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :image
      t.string :desc

      t.timestamps
    end
  end
end
