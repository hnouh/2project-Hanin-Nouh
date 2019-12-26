class Studio < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :animes, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable  
  
  def studioname
    return self.email.split('@')[0].capitalize        
  end
end
