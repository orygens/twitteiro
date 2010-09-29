class CreateRetweetships < ActiveRecord::Migration
  def self.up
    create_table :retweetships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :retweetships
  end
end
