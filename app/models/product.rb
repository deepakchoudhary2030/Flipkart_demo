class Product < ApplicationRecord
    mount_uploader :cover, CoverUploader
    has_many :list_items ,dependent: :delete_all
    belongs_to :categorylist
    
    validates :name, presence: true
    validates :detail, presence: true
    validates :price, presence: true ,numericality: true
end

