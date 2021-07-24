class Relationship < ApplicationRecord
    belongs_to :member, class_name: 'User'
    belongs_to :post
end
