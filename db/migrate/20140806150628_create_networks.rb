class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.string :kind
      t.string :ip
      t.string :sn
      t.date :expire
      t.string :position
      t.text :remark

      t.timestamps
    end
  end
end
