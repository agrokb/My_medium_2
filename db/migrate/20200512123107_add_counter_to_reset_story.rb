class AddCounterToResetStory < ActiveRecord::Migration[6.0]
  class AddCounterToStory < ActiveRecord::Migration[6.0]
    def change
      add_column :stories, :clap, :integer,default:0
    end
  end
end
