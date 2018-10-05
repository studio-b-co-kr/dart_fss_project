class CompanyStock < ApplicationRecord
  has_many :capital_increases, dependent: :destroy
end
