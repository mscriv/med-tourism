class Patient < ActiveRecord::Base
  belongs_to :doctor
  has_one :invoice
end

