class Note < ActiveRecord::Base
  belongs_to :category
  validates :content, :name, presence: true
end
