# == Schema Information
#
# Table name: generations
#
#  id         :integer         not null, primary key
#  n          :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Generation < ActiveRecord::Base
  validates :n, :uniqueness, :presence => true
  
  has_many :settings
end
