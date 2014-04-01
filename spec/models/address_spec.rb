require 'spec_helper'

describe Address do
  it { should validate_presence_of :address }
  it { should validate_presence_of :contact_id}
  it { should validate_uniqueness_of(:address).scoped_to(:contact_id) }

  it { should belong_to :contact }
end
