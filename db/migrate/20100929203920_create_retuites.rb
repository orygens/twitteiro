class CreateRetuites < ActiveRecord::Migration
  def self.up
    create_table :retuites do |t|
      t.string :nome_usuario
      t.string :nome_retuitador
      t.integer :frequencia
      t.timestamps

      t.timestamps
    end
  end

  def self.down
    drop_table :retuites
  end
end
