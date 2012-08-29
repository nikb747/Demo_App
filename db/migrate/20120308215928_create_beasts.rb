class CreateBeasts < ActiveRecord::Migration
  def change
    create_table :beasts do |t|
      t.string :name

      t.timestamps
    end
  end
end
