# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  recent_searches :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  validates :email, :presence => true
  validates :name, :presence => true, :length => {:minimum => 2}
  validates :email, :presence => true, :uniqueness => true
end
