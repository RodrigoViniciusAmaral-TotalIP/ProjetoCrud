class Usuario < ApplicationRecord
  belongs_to :genero

  validates :nome, :datanascimento, :cpf, :genero_id, presence:true
  validates :cpf, uniqueness: true

  has_many :contatos, dependent: :destroy
  accepts_nested_attributes_for :contatos, reject_if: :all_blank, allow_destroy: true
end
