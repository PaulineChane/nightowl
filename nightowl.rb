class NightOwl

  def hoot
    url = 'https://slack.com/api/chat.postMessage'
    query = { token: Recipient.token,
              text: 'hoot',
              channel: 'night-owl'} # to post to both users and channel
    sleep(1)
    response = HTTParty.post(url, query: query)

    # check for successful post
    unless response.parsed_response['ok'] && response.code == 200
      # we don't want to break the program here because the reason
      # could be anything
      raise SlackApiError, "Error: #{response.parsed_response['error']}. Please try again"
      return false
    end
  end

  def self.token
    return ENV['SLACK_TOKEN']
  end
end