# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  name       :string(255)
#  saved      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ActiveRecord::Base
  attr_accessible :name, :saved, :url
  validates :url, :format => { :with => /^http/,
    :message => "Url must start http" }
  validates :name, :presence => true
end
