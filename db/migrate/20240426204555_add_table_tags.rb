class AddTableTags < ActiveRecord::Migration[7.1]
  def change
    change_table :tags do |t|
      t.string :name, null: false
    end
  end
end
