module BlueberryRedactor
  class Image < Attachment
    mount_uploader :file, ::ImageUploader
  end
end
