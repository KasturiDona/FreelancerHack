# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  complete    :boolean
#  description :text
#  job_type    :string
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
end
