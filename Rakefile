require 'jekyll'
require_relative 'lib/youtube_playlist.rb'

multitask default: %i[clean]

# Rake Jekyll build tasks
task :build do
  puts 'Building site...'
  Jekyll::Commands::Build.process(profile: true)
end

# Rake Jekyll clean tasks
task :clean do
  puts 'Cleaning up _site...'
  Jekyll::Commands::Clean.process({})
end

task :playlist_videos do

end
