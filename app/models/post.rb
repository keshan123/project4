# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  url        :text
#  latitude   :float
#  longitude  :float
#  city_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
  belongs_to :user
end
