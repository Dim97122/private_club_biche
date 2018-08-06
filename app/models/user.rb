class User < ApplicationRecord
#==================FIRST NAME=========================

  validates :first_name, presence: true, length: { maximum: 255 }

#==================LAST NAME=========================

  validates :last_name, presence: true, length: { maximum: 255 }

#====================MAIL=============================
  before_save { self.mail = mail.downcase }
  VALID_MAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
