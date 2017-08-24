class FileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave if ENV['CLOUDINARY_URL']
end
