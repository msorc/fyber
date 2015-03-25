class ApiRequest
  include ActiveModel::Model
 
  attr_accessor :uid, :pub0, :page
  validates :uid, :pub0, :page, presence: true
end
