class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :kind
      t.string :sn
      t.date :expire
      t.text :remark

      t.timestamps
    end
  end
end
