# This migration comes from tolk_engine (originally 20120702154708)
class RenamePreviousTextFromTranslation < ActiveRecord::Migration
  def up
    rename_column :translations, :previous_text, :author
  end

  def down
    rename_column :translations, :author, :previous_text
  end
end
