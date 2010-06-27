class Resource < ActiveRecord::Base

  # Paperclip
  has_attached_file :document

  validates_attachment_presence :document
        
end
