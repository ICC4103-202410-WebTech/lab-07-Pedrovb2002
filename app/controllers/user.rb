class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "¡El nombre no puede estar vacío!" }
    validates :email, presence: { message: "¡El correo electrónico no puede estar vacío!" },
                    uniqueness: { message: "¡El correo electrónico ya está en uso!" }
    validates :password, presence: { message: "¡La contraseña no puede estar vacía!" },
                       length: { minimum: 6, message: "¡La contraseña debe tener al menos 6 caracteres!" }
    before_save :normalize_email

    private

    def normalize_email
        self.email = email.downcase
    end
  end