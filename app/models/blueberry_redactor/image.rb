module BlueberryRedactor
  class Image < Attachment
    has_one_attached :file
  end
end
