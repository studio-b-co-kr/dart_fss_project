class CompanyStock < ApplicationRecord
  validates :sharecode, presence: true, uniqueness: true, format: { with: /\d{5,5}/, message: "only 5 digits allowed" }
end
