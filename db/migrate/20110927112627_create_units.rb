class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.name :

      t.timestamps
    end
  end
end
