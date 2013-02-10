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
  belongs_to :generation
  after_save :next_generation

  protected

  def next_generation
    if Generation.last.settings.where(status: 'accepted').count > 99
      n = Generation.last.n
      Generation.new.update_attribute(:n, n+1)
    end
  end
end


