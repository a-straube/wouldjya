class Question < ActiveRecord::Base
  validates :option1, :presence => true
  validates :option2, :presence => true
end
