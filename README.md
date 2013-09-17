# Google Drive Storage

<dl>
  <dt>Authors</dt><dd>David Dawson, <a href="mailto:david.dawson@gmail.com">David Dawson</a></dd>
</dl>


## Description

A gem that allows you to use google drive to store files such as csv's.

## Install 
put the following in your Gemfile

```ruby
gem 'google_drive_storage', git: 'git@github.com:DangerDawson/google_drive_storage.git'
```

## Example Usage

```ruby
require 'google_drive_storage'

# Configure ( this can go in an initializer for rails, although
# ensure you wrap it the 'Rails.application.config.to_prepare'
# block
GoogleDriveStorage.configure do |config|
  config.client_email  = ENV['GOOGLE_STORAGE_CLIENT_EMAIL']
  config.client_secret = ENV['GOOGLE_STORAGE_CLIENT_SECRET'] 
  config.private_key   = ENV['GOOGLE_STORAGE_CLIENT_PRIVATE_KEY']
end

# Create a csv string
csv_string = 'a,b,c'

# Upload and convert the csv to a  google spreadsheet
gfile = GoogleDriveStorage.upload_csv_string( csv_string, report.filename, true )

# Move the file under a google folder, please note you
# will have to discover the id of the folder to use the 
# following command
parent_folder_id = '123df21easdasd12dasd'
gfile.parent_directory( parent_folder_id )

# add permisions
gfile.add_permission( 'reports@foobar.com', 'group', 'reader' )

# Download at a later date
GoogleDriveStorage.download_data( gfile.download_uri )
```

