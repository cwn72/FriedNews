class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :title
      t.string :ref
      t.datetime :time

      t.timestamps null: false
    end
  end
end
