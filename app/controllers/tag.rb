class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: { message: "¡El nombre del tag no puede estar vacío!" },
    uniqueness: { message: "¡El nombre del tag ya está en uso!" }
  end