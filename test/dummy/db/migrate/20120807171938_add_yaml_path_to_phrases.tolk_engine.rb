# This migration comes from tolk_engine (originally 20120629123024)
class AddYamlPathToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :yaml_path, :string
  end
end
