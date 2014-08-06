class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :kind
      t.string :brand
      t.string :smodel
      t.string :ip
      t.string :ilo
      t.string :cpu
      t.string :ram
      t.string :harddisk
      t.string :os
      t.string :sn
      t.date :expire
      t.string :position
      t.text :remark

      t.timestamps
    end
  end
end
