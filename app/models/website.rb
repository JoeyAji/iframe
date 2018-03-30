class Website < ApplicationRecord
	  has_many :sitelikes
	  has_many :users, through: :sitelikes
	  serialize :tag, Array
end
