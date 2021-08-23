class ContactRequest < ApplicationRecord
  belongs_to :guide
  belongs_to :explorer
end
