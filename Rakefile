require 'net/http'
require 'json'
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
  include YoutubePlaylist

  USAGE = %Q(
Usage: rake playlist_videos playlist=<your-playlist-id> [contributor=<contributor-name>] [console=true/false]
where
  - your-playlist-id: YouTube playlist ID
  - contribut-name: Name of contributor for the playlist [Optional]
  - console: Output to console if true else write file videos.yml

NOTE: Run 'export API_KEY=<your-api-key>' to set your API_KEY
  )

  if ENV['API_KEY'].nil? || ENV['playlist'].nil?
    puts 'Errors:'
    puts '- API_KEY is missing. Set your API_KEY first.' if ENV['API_KEY'].nil?
    puts '- Playlist ID is missing.' if ENV['playlist'].nil?
    puts USAGE
    exit
  end

  params = {
    'key': ENV['API_KEY'],
    'playlistId': ENV['playlist'],
    'console': ENV['console'],
    'part': 'snippet',
    'maxResults': 50
  }

  params.merge!('contributor': ENV['contributor']) if ENV['contributor']
  YoutubePlaylist.videos(params)
end
