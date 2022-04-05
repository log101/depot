class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains

  has_secure_password

  class Error < StandardError
  end

private
  def ensure_an_admin_remains
    if User.count.zero?
      raise Error.new "Can't delete the last user"
    end
  end
end
