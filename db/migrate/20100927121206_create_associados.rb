class CreateAssociados < ActiveRecord::Migration
  def self.up
    create_table :associados do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :associados
  end
end
