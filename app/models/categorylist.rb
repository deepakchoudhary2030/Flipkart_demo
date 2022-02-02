class Categorylist < ApplicationRecord
     mount_uploader :cover, CoverUploader
     has_many :subcategories, class_name: "Categorylist",foreign_key: "category_id",dependent: :destroy
     belongs_to :category, class_name: "Categorylist", optional: true
     has_many :products ,dependent: :delete_all
     validates :name, presence: true
end
