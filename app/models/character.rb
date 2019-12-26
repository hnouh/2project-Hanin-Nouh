class Character < ApplicationRecord
    has_and_belongs_to_many :animes
    mount_uploader :pic , PicUploader

    validates :name,presence: true  
    
end
