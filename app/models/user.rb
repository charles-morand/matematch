class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  GENDERS = ["Male", "Female", "Undefined"]
  ROLES = ["Guide", "Explorer"]
  LANGUAGES = ["GB", "FR", "ES", "DE", "IT", "PT", "NL", "RU", "PL", "CN", "JP", "KR"]
  HOBBIES = ["Culture", "Ecology", "Travel", "DIY", "Cooking", "Drawing", "Music", "Theater", "Hiking", "Cycling", "Surf", "Skateboard", "Football", "Basketball", "Tennis", "Fitness"]
  ACTIVITIES = ["Arts", "Sports", "Tourism", "Hang out", "Food", "Cinema", "Music"]

  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :contact_requests, foreign_key: :explorer_id, dependent: :destroy
  has_many :received_contact_requests, foreign_key: :guide_id, class_name: "ContactRequest", dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true, length: { minimum: 100 }
  validates :birth_date, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS }
  validates :phone_number, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :languages, presence: true
  validates :hobbies, presence: true
  validates :chosen_activities, presence: true
  validates :address, presence: true

  validate :languages_are_included_in_list,
           :hobbies_are_included_in_list,
           :chosen_activities_are_included_in_list,
           :selected_number_of_hobbies_between_1_and_3,
           :selected_number_of_languages_between_1_and_5,
           :selected_number_of_activities_between_1_and_3

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def age
    ((DateTime.now - birth_date) / 365).to_i
  end

  private

  def languages_are_included_in_list
    if languages.any? { |language| !LANGUAGES.include?(language) }
      errors.add :languages, :inclusion
    end
  end

  def hobbies_are_included_in_list
    if hobbies.any? { |hobby| !HOBBIES.include?(hobby) }
      errors.add :hobbies, :inclusion
    end
  end

  def chosen_activities_are_included_in_list
    if chosen_activities.any? { |activity| !ACTIVITIES.include?(activity) }
      errors.add :chosen_activities, :inclusion
    end
  end

  def selected_number_of_hobbies_between_1_and_3
    unless (1..3).include?(hobbies.count)
      errors.add :hobbies, "Please choose between 1 and 3 hobbies"
    end
  end

  def selected_number_of_activities_between_1_and_3
    unless (1..3).include?(chosen_activities.count)
      errors.add :chosen_activities, "Please choose between 1 and 3 activities"
    end
  end

  def selected_number_of_languages_between_1_and_5
    unless (1..3).include?(languages.count)
      errors.add :languages, "Please choose between 1 and 3 languages"
    end
  end
end
