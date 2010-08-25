class Resource < ActiveRecord::Base

  belongs_to :language

  # Paperclip
  has_attached_file :document,
    :storage => :s3, 
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }, 
    :bucket => ENV['S3_BUCKET'],
    :path => "/:style/:filename"

  validates_attachment_presence :document
        
end
