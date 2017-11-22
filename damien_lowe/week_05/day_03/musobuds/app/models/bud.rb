# == Schema Information
#
# Table name: buds
#
#  id         :integer          not null, primary key
#  name       :text
#  strain     :text
#  ancestors  :text
#  THC        :integer
#  CBD        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bud < ActiveRecord::Base
  belongs_to :artist
end
