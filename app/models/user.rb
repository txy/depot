class User < ActiveRecord::Base   

  before_save { self.email =email.downcase } 
  before_create :create_remember_token
  #可访问属性
  attr_accessible :email, :name ,:password,:password_confirmation,
                  :password_digest,:admin #定义属性访问器、获取和设定的方法
  #name格式
  validates :name, presence: true,   #validates(:name,presence: true)   非空
                   length: {maximum: 50} #长度50

  #邮箱格式
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i   
  VALID_EMAIL_REGEX  = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,  #validates(:email,presence: true)  非空
                    format: { with: VALID_EMAIL_REGEX }, #邮箱格式
                    uniqueness: {case_sensitive: false} #唯一性 不区分大小写

  validates :password, length: {minimum: 1} #最小长度1
  #密码相关规则
  has_secure_password 

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end
  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  private 
    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end
