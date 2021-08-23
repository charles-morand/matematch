class ContactRequest < ApplicationRecord
  belongs_to :guide, class_name: "User"
  belongs_to :explorer, class_name: "User"
end
