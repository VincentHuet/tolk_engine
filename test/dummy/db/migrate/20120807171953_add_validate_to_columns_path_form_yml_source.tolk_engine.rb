# This migration comes from tolk_engine (originally 20120706123912)
class AddValidateToColumnsPathFormYmlSource < ActiveRecord::Migration
  def change
    add_index :yml_sources, :path, :unique => true
  end
end
