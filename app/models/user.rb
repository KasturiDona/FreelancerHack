# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  collaborator    :boolean
#  skillset        :text
#  rating          :float
#  hiring_status   :boolean
#  account         :float
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

class User < ActiveRecord::Base
	has_secure_password
	
	validates :email, :presence => true, :uniqueness => true
	validates :password, :length => {:minimum => 8}
end
