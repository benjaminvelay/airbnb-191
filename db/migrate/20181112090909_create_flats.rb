class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
