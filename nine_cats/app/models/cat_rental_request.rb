class CatRentalRequest < ApplicationRecord
  include Comparable
  validates :cat_id, :start_date, :end_date, presence: true
  validate :overlapping_requests
  
  
  belongs_to :cat,
  foreign_key: :cat_id,
  class_name: :Cat
  
  def overlapping_requests
    # find rental requests of specific cat_id
      # all of the rental requests / confirmations for specific cat
    # return grayed out dates
    # see if our date overlaps
    our_start = self.start_date
    our_end = self.end_date
    cat = Cat.find(self.cat_id)
    
    cat.cat_rental_requests.each do |request|
      return false if request.start_date.between?(our_start,our_end) || request.end_date.between?(our_start,our_end) 
    end
    #validation passes if there is no overlap
    return true
  end
end