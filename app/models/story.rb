class Story < ApplicationRecord
    validates :title, presence: true
    validates :summary, presence: true
end
