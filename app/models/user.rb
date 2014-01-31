class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]

  has_many :robots

  def self.find_or_create_github_auth(auth_hash)

    user = where(email: auth_hash[:info][:email]).first_or_create! do |u|
      u.password = Devise.friendly_token[0,20]
    end

    user.name = auth_hash[:info][:name]
    user.uid = auth_hash[:uid]
    user.avatar = auth_hash[:info][:image]
    user.provider = auth_hash[:provider]
    user.save if user.changed?
    user

  end
end
