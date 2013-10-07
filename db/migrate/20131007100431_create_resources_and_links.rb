class CreateResourcesAndLinks < ActiveRecord::Migration
  def change
    create_table :resources_and_links do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
