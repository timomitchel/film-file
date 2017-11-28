class Film < ActiveRecord::Base

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

  def self.average_box_office_sales
    average(:box_office_sales)
  end

validates_presence_of :title, :year, :box_office_sales
  
end
