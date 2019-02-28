class User < ApplicationRecord

  has_many :residences, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    
         DISTRICTS = ['Select-District/Village','Gongore-Centre', 'Gongore-Aindai', 'Popodara','Kourou', 'Poukou']
end
