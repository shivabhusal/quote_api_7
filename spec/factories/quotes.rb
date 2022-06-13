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
FactoryBot.define do
  factory :quote do
    title { "Here is a Quote" }
    author { "Author" }
  end
end
