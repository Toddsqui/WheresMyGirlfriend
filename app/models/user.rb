class User < ActiveRecord::Base
  has_one :location
  has_one :sent_connection, class_name: "Connection", foreign_key: "sender_id"
  has_one :received_connection, class_name: "Connection", foreign_key: "recipient_id"


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
