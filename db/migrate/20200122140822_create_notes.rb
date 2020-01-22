class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string      :title
      t.string      :text
      t.belongs_to  :user

      t.timestamps
    end
  end
end
