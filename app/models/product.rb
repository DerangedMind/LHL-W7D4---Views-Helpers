class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  def apply_sale
    first_sale =  Sale.active_sale.first
    percent_off = Sale.active_sale.first.percent_off if first_sale

    unless first_sale.nil?
      sale_price = (100 - percent_off)/100.0 * price
      puts sale_price
      sale_price
    else
      price
    end
  end

end
