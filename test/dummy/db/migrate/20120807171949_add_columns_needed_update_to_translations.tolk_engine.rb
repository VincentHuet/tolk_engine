# This migration comes from tolk_engine (originally 20120704095040)
class AddColumnsNeededUpdateToTranslations < ActiveRecord::Migration
  def up
    add_column :translations, :needed_update, :integer
  end
  
  def down
    remove_column :translations, :needed_update, :integer
  end
end