class Address <ActiveRecord::Base
  belongs_to :contact

  validates :address, :presence => true, :uniqueness => { :scope => :contact_id }
  validates :contact_id, :presence => true
end
