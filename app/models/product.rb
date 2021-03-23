class Product < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :price, :description, :category

  def full_description
    "#{self.price} - #{self.description} - #{self.category}"
  end
end
