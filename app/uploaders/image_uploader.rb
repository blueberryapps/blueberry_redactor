class ImageUploader < CarrierWave::Uploader::Base
  if ENV['CLOUDINARY_URL']
    include Cloudinary::CarrierWave
  else
    include CarrierWave::MiniMagick
  end

  version :thumb do
    process resize_to_fill: [300, 300]
  end

  version :content do
    process resize_to_limit: [800, 800]
  end
end
