class AddCounterToStory < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :clap, :interger,default:0
  end
end
