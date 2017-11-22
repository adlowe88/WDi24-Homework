# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :text
#  instrument  :text
#  genre       :text
#  nationality :text
#  birth       :date
#  death       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ActiveRecord::Base
  has_many :buds
end
