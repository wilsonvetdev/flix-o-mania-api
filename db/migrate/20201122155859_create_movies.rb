class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
        t.integer :movie_id
        t.string :picture
        t.string :name
        t.boolean :like
        t.boolean :dislike
      t.timestamps
    end
  end
end
