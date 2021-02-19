class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #removing this to prevent sign up, users should not be able to register themselves  :registerable,
         :recoverable, :rememberable, :validatable
end
