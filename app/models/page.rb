class Page < ApplicationRecord
  has_many :children, class_name: 'Page', foreign_key: 'parent_id'
  belongs_to :story

  validates :name, presence: true
  validates :text, presence: true
end
