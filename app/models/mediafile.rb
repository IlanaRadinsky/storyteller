class Mediafile < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  mount_uploader :attachment, ImageUploader
  belongs_to :user
end
