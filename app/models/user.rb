class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :cover, CoverUploader
  has_many :list_items ,dependent: :delete_all
  has_one :cart ,dependent: :destroy
  has_many :orders ,dependent: :delete_all
end
