class PegGroup < ActiveRecord::Base
  has_many :logs
  has_many :point_of_contacts

end
