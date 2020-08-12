# Youtube Playlist
module YoutubePlaylist
  FILE_NAME = 'videos.yml'

  YOUTUBE_BASE_URL = 'https://www.googleapis.com/youtube/v3/playlistItems'

  def videos(params)
    contributor_hash = {}
    if params.key? :contributor
      contributor_hash.merge!('contributor': params[:contributor])
      params.delete(:contributor)
    end

    response = response_hash(params)
    return puts "Error: #{response['error']['message']}" if response['error']

    videos_hash = if response['pageInfo']['totalResults'] >= 50
                    videos_from_multi_page(response, params, contributor_hash)
                  else
                    build_videos_hash(response, contributor_hash)
                  end
    write_to_file(videos_hash)
  end

  def videos_from_multi_page(response, params, contributor_hash)
    videos_hash = []

    until page_token(response).nil?
      videos_hash += build_videos_hash(response, contributor_hash)
      params.merge!(pageToken: response['nextPageToken']) unless response['nextPageToken'].nil?
      response = response_hash(params)
    end

    # for last page
    videos_hash += build_videos_hash(response, contributor_hash) unless response['prevPageToken'].nil?
    videos_hash
  end

  def page_token(response)
    return response['nextPageToken'] if response['nextPageToken']
  end

  def write_to_file(hash)
    File.open(FILE_NAME, 'w') { |file| file.write(hash.to_yaml) }
    puts "Video entries added to #{FILE_NAME} successfully."
  end

  def build_videos_hash(response, contributor_hash)
    response['items'].map do |item|
      video_hash = {
        'title' => item['snippet']['title'],
        'id' => item['snippet']['resourceId']['videoId'],
        'contributor' => 'NOS Teacher'
      }

      video_hash['contributor'] = contributor_hash[:contributor] if contributor_hash.length.positive?
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
