class CreateTwitterDbs < ActiveRecord::Migration[5.1]
  def change
    create_table :twitter_dbs do |t|
      t.text :content

      t.timestamps
    end
  end
end
