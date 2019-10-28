ruby '2.4.5'

gem 'xcpretty'
#gem "xcpretty", git:"https://github.com/Lightricks/xcpretty"
gem 'trainer'
gem "fastlane"
gem "fastlane-plugin-ruby"
#gem "fastlane-plugin-trainer"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
