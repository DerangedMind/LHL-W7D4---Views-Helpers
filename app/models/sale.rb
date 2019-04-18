class Sale < ActiveRecord::Base

  scope :active_sale, -> {
    where("starts_on < ?", Date.current)
    .where("ends_on > ?", Date.current)
  }

  def upcoming?
    starts_on > Date.current
  end

  def expired?
    ends_on < Date.current
  end

end
