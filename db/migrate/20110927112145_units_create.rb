class UnitsCreate < ActiveRecord::Migration
 def up
      create_table :units do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
     drop_table :units
  end
end
