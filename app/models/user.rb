class User < ApplicationRecord
  STATUSES = %w(active inactive)

  validates :email, presence: true, uniqueness: true
  validates :status, inclusion: {in: STATUSES}


end