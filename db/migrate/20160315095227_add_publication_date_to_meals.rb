class AddPublicationDateToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :publication_date, :date
  end
end
