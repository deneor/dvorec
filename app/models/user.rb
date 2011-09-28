class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  belongs_to :unit
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :name, :unit_id, :role_ids
  
  
  def has_roles(role)
    # aithorize!
    return roles.map(&:name).include?(role)
    #else
    #  return false
    #end
  end
  
  def admin?
    return has_roles 'admin'
  end
  
end

