class Gossip < ApplicationRecord
  belongs_to :user

  validates :title,
    presence: true,
    length: { in: 3..14 }
  validates :content,
    presence: true
  def self.show_all
    array_gossip = Gossip.all
  end
end
