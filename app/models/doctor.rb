class Doctor < ActiveRecord::Base
  belongs_to :country
  has_many :patients
  has_many :invoices
end
