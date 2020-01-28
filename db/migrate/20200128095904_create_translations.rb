class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.belongs_to    :recipe
      t.string        :source_text
      t.string        :translated_text
      t.timestamps
    end
  end
end
