class Link < ActiveRecord::Base
  attr_accessible :name, :saved, :url
  validates :url, :format => { :with => /^http/,
    :message => "Url must start http" }
  validates :name, :presence => true
end
