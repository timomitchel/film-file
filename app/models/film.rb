class Film < ActiveRecord::Base

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

validates_presence_of :title, :year
  
end
