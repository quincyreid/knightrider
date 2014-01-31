if ENV["S3_ACCESS_KEY" ]
  Paperclip::Attachment.default_options[:storage] = :s3
  Paperclip::Attachment.default_options[:s3_credentials] = {
    access_key_id: ENV["S3_ACCESS_KEY"],
    secret_access_key: ENV["S3_SECRET_KEY"]
  }
  Paperclip::Attachment.default_options[:bucket] = ENV["S3_UPLOAD_BUCKET"]
  Paperclip::Attachment.default_options[:s3_host_alias] = ENV["S3_UPLOAD_BUCKET"]
  Paperclip::Attachment.default_options[:url] = ":s3_alias_url"
  Paperclip::Attachment.default_options[:s3_protocol] = "http"
  Paperclip::Attachment.default_options[:path] = "#{Rails.env}/:class/:id/:attachment/:style.:extension"
end


