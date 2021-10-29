class Ninja < ApplicationRecord
  belongs_to :dojo
  validates :first_name, :last_name, presence: true

  after_create :creacion_exitosa

  def creacion_exitosa
    p "Tu ninja se ha creado"
  end
end
