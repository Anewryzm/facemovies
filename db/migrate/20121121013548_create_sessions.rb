class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :movie_id
      t.datetime :started_at

      t.timestamps
    end
  end
end
