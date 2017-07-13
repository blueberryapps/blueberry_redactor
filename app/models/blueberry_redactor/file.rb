module BlueberryRedactor
  class File < Attachment
    mount_uploader :file, ::FileUploader
  end
end
