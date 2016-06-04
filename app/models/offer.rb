class Offer < ActiveRecord::Base

  mount_uploader :image, OfferImageUploader

  belongs_to :company

end
