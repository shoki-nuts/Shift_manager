class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :shifts

  has_many :relationships
  #has_many :relationships, class_name: 'Relationship', foreign_key: 'user_id'
  has_many :followings, through: :relationships, source: :admin
  #中間テーブルrelationshipの指定、follow_idからfollowingモデルにアクセス
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'admin_id'
  #follow_idからrelationshipモデルにアクセス
  has_many :followers, through: :reverse_of_relationships, source: :user
  #中間テーブルreverse_of_relationshipsの指定、user_idからfollowingモデルにアクセス
  
  def follow(other_user)
    self.relationships.find_or_create_by(admin_id: other_user.id)
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(admin_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end
end
