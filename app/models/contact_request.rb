class ContactRequest < ApplicationRecord
  MATCHING_CRITERIA = %i[activity hobbies languages city age]

  belongs_to :guide, class_name: "User"
  belongs_to :explorer, class_name: "User"
  validates :status, presence: true
  validates :activity, presence: true
end
