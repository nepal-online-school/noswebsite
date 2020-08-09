# Youtube Playlist
module YoutubePlaylist

  YOUTUBE_BASE_URL = 'https://www.googleapis.com/youtube/v3/playlistItems'

  def videos(params)
    contributor_hash = Hash.new
    if params.key? :contributor
      contributor_hash.merge!('contributor': params[:contributor])
      params.delete(:contributor)
    end

    puts "Params: ", params
    response = response_hash(params)
    videos_hash = build_videos_hash(response, contributor_hash)
    print_yml(videos_hash)
  end

  def print_yml(hash)
    puts hash.to_yaml
  end

  def build_videos_hash(response, contributor_hash)
    response['items'].map do |item|
      video_hash = {
        'title' => item['snippet']['title'],
        'id' => item['snippet']['resourceId']['videoId']
      }

      video_hash.merge!('contributor' => contributor_hash[:contributor]) if contributor_hash.length.positive?
      video_hash
    end
  end

  def response_hash(params)
    url = build_url(params)
    response = Net::HTTP.get(URI(url))
    JSON.parse(response)
  end

  def build_url(params)
    "#{YOUTUBE_BASE_URL}?#{URI.encode_www_form(params)}"
  end
end
