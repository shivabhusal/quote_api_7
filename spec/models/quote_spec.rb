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
require 'rails_helper'

RSpec.describe Quote, type: :model do
  describe '.find_random' do
    context 'When No Records' do
      it 'returns no record' do
        expect(Quote.find_random).to eq(nil)
      end
    end

    context 'When 1 Record' do
      it 'returns a record' do
        create :quote
        expect(Quote.find_random).not_to eq(nil)
      end
    end

    context 'When There Are Records' do
      it 'returns random record everytime' do
        (1..100).each do
          create :quote
        end

        q1 = Quote.find_random
        q2 = Quote.find_random
        expect(q1.id).not_to eq(q2.id)
      end
    end
  end
end
