# This migration comes from tolk_engine (originally 20120702125842)
class RemoveColumnsLocalePhraseFromTranslation < ActiveRecord::Migration
  def up
    remove_column :translations, :phrases
    remove_column :translations, :locales
  end

  def down
    add_column :translations, :phrases
    add_column :translations, :locales
  end
end
