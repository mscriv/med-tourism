class Invoice < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  has_many :line_items
end
