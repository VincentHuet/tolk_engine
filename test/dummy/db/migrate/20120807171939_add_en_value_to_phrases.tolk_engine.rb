# This migration comes from tolk_engine (originally 20120701190223)
class AddEnValueToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :en_value, :string
  end
end
