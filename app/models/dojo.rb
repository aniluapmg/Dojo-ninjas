class Dojo < ApplicationRecord
  validates :state, presence: true, length: { is: 2 }

  has_many :ninjas, :dependent => :destroy

  after_destroy :destroy_all_ninjas_from_dojo

  def destroy_all_ninjas_from_dojo()
    self.ninjas.destroy_all
  end
end
