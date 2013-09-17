Gem::Specification.new do |s|
  s.name        = 'google_drive_storage'
  s.version     = '0.0.1'
  s.date        = '2013-09-17'
  s.summary     = "Allows you to upload and download csv file to google drive"
  s.description = ""
  s.authors     = ["David Dawson"]
  s.email       = 'david.dawson@gmail.com'
  s.files       = ["lib/google_drive_storage.rb"]

  s.files       = Dir['LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.license     = 'MIT'

  s.add_dependency 'google-api-client', '>= 0.6.4'
end
