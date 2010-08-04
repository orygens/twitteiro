class CreateCampanhas < ActiveRecord::Migration
  def self.up
    create_table :campanhas do |t|
      t.string :nome
      t.string :premio
      t.datetime :df
      t.text :tweet

      t.timestamps
    end
  end

  def self.down
    drop_table :campanhas
  end
end
