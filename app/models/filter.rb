class Filter < ActiveRecord::Base
  acts_as_tenant :user
  #
  # schema
  #
  fields do
    keywords  :string
    type      :boolean, default: false # true => whitelist, false => blacklist
    active    :boolean, default: true
    user_id   :integer
    timestamps
  end
  
  attr_accessible :keywords, :type, :active, :feed_id

  #
  # Validations
  # 

  #
  # Relations
  # 
  belongs_to :feed
  #
  # Methods
  # 

end
