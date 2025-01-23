class Patient < ApplicationRecord
  belongs_to :user	
  validates :name, :date_of_birth, :email, presence: true
  validates :email, uniqueness: true

  # Scope to filter patients with upcoming appointments within 72 hours
  scope :relevant_soon, -> { where('next_appointment >= ? AND next_appointment <= ?', Time.now, Time.now + 72.hours) }
end
