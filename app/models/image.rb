class Image < ApplicationRecord

  class Image < ActiveRecord::Base
  has_one_attached :image_file

  def self.sizes
    return {
      thumbnail: { resize: "100x100" },
      hero1:     { resize: "1000x500" }
    }
  end

  def sized(size)
    return self.image_file.variant(Image.sizes[size]).processed
  end

  end
end
