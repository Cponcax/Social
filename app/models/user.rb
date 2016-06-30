class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable #, :omniauth_providers => [:facebook]

  def self.from_omniauth()
    where(provider: auth[:provider], uid:auth[:uid]).first_or_create do |user|
      if auth[:info]
        user.email = auth[:infod][:email]
        user.name = auth[:infod][:name]
        else

      end
    end
  end

end

