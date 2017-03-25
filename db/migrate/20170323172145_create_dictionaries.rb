class CreateDictionaries < ActiveRecord::Migration[5.0]
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :definition

      t.timestamps
    end
  end
end
