class ContactSubmission < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true

end
