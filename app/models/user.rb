class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :from_messages,  primary_key: 'id', foreign_key: 'from_user_id', :class_name => 'Message'
  has_many :to_messages,  primary_key: 'id', foreign_key: 'to_user_id', :class_name => 'Message'
end
