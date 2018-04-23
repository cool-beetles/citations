class FixColumneName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :citations, :title, :citation_text
  end
end
