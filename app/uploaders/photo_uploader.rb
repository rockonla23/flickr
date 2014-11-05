class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick


  storage :file
  # process :radial_blur => "10"

  # def radial_blur(amount)
  #   manipulate! do |img|
  #     img.radial_blur(amount)
  #     img = yield(img) if block_given?
  #     img
  #   end
  # end
end
