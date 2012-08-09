# This migration comes from tolk_engine (originally 20120702132656)
class RemoveColumnsLocalePhraseFromTranslation2 < ActiveRecord::Migration
  def up
    remove_column :tolk_engine_translations, :phrases
    remove_column :tolk_engine_translations, :locales
  end

  def down
    add_column :tolk_engine_translations, :phrases
    add_column :tolk_engine_translations, :locales
  end
end