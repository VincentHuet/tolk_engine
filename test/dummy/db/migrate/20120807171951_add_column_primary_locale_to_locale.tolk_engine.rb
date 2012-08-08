# This migration comes from tolk_engine (originally 20120705130656)
class AddColumnPrimaryLocaleToLocale < ActiveRecord::Migration
  def up
    add_column :locales, :primary_locale, :boolean
  end
  
  def down
    remove_column :locales, :primary_locale, :boolean
  end
end
