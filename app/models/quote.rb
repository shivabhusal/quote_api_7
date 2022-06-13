# == Schema Information
#
# Table name: quotes
#
#  id         :bigint           not null, primary key
#  title      :string
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Quote < ApplicationRecord

  class << self
    def find_random
      rnd_number = rand(0...self.count)
      offset(rnd_number).first
    end
  end
end
