class Resource < ActiveRecord::Base

  belongs_to :language

  # Paperclip
  has_attached_file :document

  validates_attachment_presence :document
        
end
