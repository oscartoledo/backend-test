class Event < ActiveRecord::Base
  has_many :billboards
  accepts_nested_attributes_for :billboards
end
