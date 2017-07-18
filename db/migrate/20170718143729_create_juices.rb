class CreateJuices < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :name
    end
  end
end
