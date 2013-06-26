S3DirectUpload.config do |c|
  c.access_key_id = "AKIAIEOI6ZMLYMIJRA6A" # your access key id
  c.secret_access_key = "q6jWr+cHliSyRkUgd05JnoDj0ZGRDUuhW79ls6o+"   # your secret access key
  c.bucket = "boxedpins"              # your bucket name
  c.region = nil             # region prefix of your bucket url (optional), eg. "s3-eu-west-1"
  c.url = nil                # S3 API endpoint (optional), eg. "https://#{c.bucket}.s3.amazonaws.com/"
end
