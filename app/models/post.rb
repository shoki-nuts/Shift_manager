class Post < ApplicationRecord
    has_many :relationships, dependent: :destroy
    has_many :members, through: :relationships, source: :member

    belongs_to :user
    has_many :shifts

    
    def already_following?(member)
        self.relationships.exists?(member_id: member.id)
    end

    def follower
        
    end
    
end
