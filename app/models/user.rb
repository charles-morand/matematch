class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :contact_requests, foreign_key: :explorer_id
  has_many :received_contact_requests, foreign_key: :guide_id, class_name: "ContactRequest"
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true
  validates :age, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
  validates :phone_number, presence: true
  validates :role, presence: true
  validates :languages, presence: true
  validates :hobbies, presence: true
  validates :chosen_activities, presence: true
end
