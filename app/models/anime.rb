class Anime < ApplicationRecord
    has_and_belongs_to_many :characters, dependent: :destroy
    accepts_nested_attributes_for :characters,allow_destroy: true
    belongs_to :studio

    mount_uploader :image , ImageUploader

    validates :name,presence: true
    
end
