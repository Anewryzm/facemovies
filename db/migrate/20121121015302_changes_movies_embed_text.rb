class ChangesMoviesEmbedText < ActiveRecord::Migration
  def change
  	change_column :movies, :embed, :text
  end
end
