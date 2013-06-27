class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :url
      t.text :taken

      t.timestamps
    end
  end
end
