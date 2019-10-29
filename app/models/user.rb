class User < ApplicationRecord
  has_many :gossips

  def self.show_user
    @array_user = User.all
  end
end
