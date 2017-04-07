class Billboard < ActiveRecord::Base
  after_initialize :init

  belongs_to :event

  validates :show_date, :price, presence: true
  validates :premier, :sold_out, inclusion: { in: [true, false] }
  validates :premier, :sold_out, exclusion: { in: [nil] }
  validates :show_date, future: true


  def init
    self.premier  ||= false
    self.sold_out ||= false
  end
end
