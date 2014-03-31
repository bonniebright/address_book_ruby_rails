class Email <ActiveRecord::Base
  belongs_to :contact

  validates :email, :presence => true, :uniqueness => { :scope => :contact_id }
  validates :contact_id, :presence => true
end
