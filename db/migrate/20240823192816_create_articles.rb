class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :question
      t.text :answer
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
