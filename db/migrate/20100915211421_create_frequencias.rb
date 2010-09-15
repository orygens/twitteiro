class CreateFrequencias < ActiveRecord::Migration
  def self.up
    create_table :frequencias do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :frequencias
  end
end
