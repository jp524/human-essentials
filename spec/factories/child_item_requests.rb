# == Schema Information
#
# Table name: child_item_requests
#
#  id                          :bigint           not null, primary key
#  picked_up                   :boolean          default(FALSE)
#  picked_up_item_diaperid     :integer
#  quantity_picked_up          :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  authorized_family_member_id :integer
#  child_id                    :bigint
#  item_request_id             :bigint
#
FactoryBot.define do
  factory :child_item_request, class: Partners::ChildItemRequest do
    child { build(:partners_child) }
    association :item_request
  end
end
