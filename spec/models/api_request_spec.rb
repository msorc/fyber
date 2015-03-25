require 'rails_helper'

RSpec.describe ApiRequest, type: :model do
  it { should validate_presence_of(:uid) }
  it { should validate_presence_of(:pub0) }
  it { should validate_presence_of(:page) }
end
