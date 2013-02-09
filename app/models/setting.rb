# == Schema Information
#
# Table name: settings
#
#  id         :integer         not null, primary key
#  border     :integer
#  size       :integer
#  size_p     :integer
#  white_p    :integer
#  black_p    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Setting < ActiveRecord::Base
  attr_accessible :black_p, :border, :size, :size_p, :white_p
end


