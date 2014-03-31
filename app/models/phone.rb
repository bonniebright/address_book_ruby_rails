class Phone <ActiveRecord::Base
  belongs_to :contact

  validates :number, :presence => true, :uniqueness => { :scope => :contact_id }
  validates :contact_id, :presence => true
end
