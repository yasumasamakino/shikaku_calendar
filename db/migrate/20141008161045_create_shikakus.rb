class CreateShikakus < ActiveRecord::Migration
  def change
    create_table :shikakus do |t|
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
