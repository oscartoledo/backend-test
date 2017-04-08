class Event < ActiveRecord::Base
  has_many :billboards, inverse_of: :event
  accepts_nested_attributes_for :billboards

  validates :name, :description, :location, :picture_url, presence: true
  validates :name, :description, :location, length: { minimum: 1 }
  validates :picture_url, length: { minimum: 7 }
  validates :featured, inclusion: { in: [true, false] }
  validates :featured, exclusion: { in: [nil] }
  validates :picture_url, format: {with: /\A(http|https|ftp):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix}
end
