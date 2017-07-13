class FileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave if ENV['CLOUDINARY_URL']

  def extension_white_list
    ['application/msword', 'application/pdf', 'text/plain', 'text/rtf', 'application/vnd.ms-excel']
  end
end
