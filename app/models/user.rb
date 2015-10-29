# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  collaborator  :boolean
#  skillset      :text
#  rating        :float
#  hiring_status :boolean
#  account       :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
end
