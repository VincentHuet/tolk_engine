# == Schema Information
#
# Table name: phrases
#
#  id         :integer          not null, primary key
#  key        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  yaml_path  :string(255)
#
module TolkEngine
  class Phrase < ActiveRecord::Base
    attr_accessible :key
    attr_accessible :yaml_path

    has_many :translations

  end
end