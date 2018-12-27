class Post < ApplicationRecord

  belongs_to :animal, required: false
  belongs_to :user, required: false
  has_one_attached :image
  has_one :location

  def google_map(center)

  "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"

  end

end
