class CreateBirthStories < ActiveRecord::Migration
  def change
    create_table :birth_stories do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
