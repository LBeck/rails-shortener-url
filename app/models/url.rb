require 'securerandom'

class Url < ActiveRecord::Base
  attr_accessible :long_url
  
  validates :long_url, presence: true

  before_create :generate_short_url

  private

  def generate_short_url
    self.short_url = SecureRandom.hex(4)
  end

end
