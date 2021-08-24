class ChosenActivitiesValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value == ["Arts", "Sports", "Tourism", "Hanging out", "Food", "Cinema", "Musique"]
      record.errors.add attribute, (options[:message] || "is not an available activity for now...")
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  GENDERS = ["Male", "Female", "Undefined"]
  ROLES = ["Guide", "Explorer"]
  LANGUAGES = ["FR", "ES", "DE", "IT", "SP", "PT", "NL", "RU", "PL", "CN", "JP", "KR", "GB"]
  HOBBIES = ["Hiking", "Guitar", "Drawing", "Singing", "Football", "Sneakers", "Beers", "Rock", "Culture", "Ecology", "Plants", "Travel", "Swimming", "Skateboard", "Piano", "Travel", "Basketball", "Surf", "Cooking", "Cycling", "DIY", "Theater", "Pastry", "Roller"]
  ACTIVITIES = ["Arts", "Sports", "Tourism", "Hanging out", "Food", "Cinema", "Musique"]


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :contact_requests, foreign_key: :explorer_id
  has_many :received_contact_requests, foreign_key: :guide_id, class_name: "ContactRequest"
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true, length: { minimum: 100 }
  validates :age, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS }
  validates :phone_number, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :languages, presence: true
  validates :hobbies, presence: true, length: { in: 1..5 }
  validates :chosen_activities, presence: true

  validate :languages_are_included_in_list,

  private

  def languages_are_included_in_list
    if languages.any? { |language| !LANGUAGES.include?(language) }
      record.errors.add :languages, :inclusion
    end
  end

  def hobbies_are_included_in_list
    if hobbies.any? { |hobby| !HOBBIES.include?(hobby) }
      record.errors.add :hobbies, :inclusion
    end
  end

  def chosen_activities_are_included_in_list
    if activities.any? { |activity| !ACTIVITIES.include?(activity) }
      record.errors.add :activities, :inclusion
    end
  end
end
