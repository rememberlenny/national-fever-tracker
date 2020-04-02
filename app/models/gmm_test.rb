class GmmTest < ApplicationRecord
  validate :gmm_test
  # validates :symptoms, presence: true
  validates :age, presence: true
  # validates :loc_city, presence: true
  validates :loc_zip, presence: true, length: { minimum: 5 }
  # validates :loc_state, presence: true

  def gmm_test
    if gmm.blank?
      errors.add(:gmm, "cant blank")
   end
  end
end
