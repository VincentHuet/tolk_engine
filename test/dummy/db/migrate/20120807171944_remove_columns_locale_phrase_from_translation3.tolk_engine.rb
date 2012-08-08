# This migration comes from tolk_engine (originally 20120702133052)
class RemoveColumnsLocalePhraseFromTranslation3 < ActiveRecord::Migration
    def up
    remove_column :translations, :phrase
    remove_column :translations, :locale
  end

  def down
    add_column :translations, :phrase
    add_column :translations, :locale
  end
end