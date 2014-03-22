class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  # :confirmable, :lockable, :timeoutable, :omniauthable

  def has_lastfm?
    self.lastfm_key.present?
  end

  def lastfm
    @lastfm ||=
      if self.lastfm_key
        LASTFM.dup.tap{ |l| l.session = self.lastfm_key }
      end
  end
end
