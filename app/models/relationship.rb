class Relationship < ApplicationRecord
    belongs_to :user
    belongs_to :admin, class_name: 'User'
    
    validates :user_id, presence: true
    validates :admin_id, presence: true
end
