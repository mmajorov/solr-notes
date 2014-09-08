class Category < ActiveRecord::Base
  has_many :notes
  validates :title, presence: true
end
