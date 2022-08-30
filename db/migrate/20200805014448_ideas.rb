class Ideas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|

      t.string :title # This creates a VARCHAR (255) column named title
      t.text :description 

      t.timestamps
    end
  end
end
