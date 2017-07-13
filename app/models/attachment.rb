class Attachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true

  enum file_type: %i[image file]
end
