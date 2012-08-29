class CreateNoises < ActiveRecord::Migration
  def change
    create_table :noises do |t|
      t.string :sound
      t.integer :beast_id

      t.timestamps
    end
  end
end
