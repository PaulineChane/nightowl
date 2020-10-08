require 'httparty'

class NightOwl
  def hoot
    url = 'https://slack.com/api/chat.postMessage'
    query = { token: NightOwl.token,
              text: 'hoot',
              channel: 'night-owl'} # to post to both users and channel
    sleep(1)
    HTTParty.post(url, query: query)
  end

  def self.token
    return ENV['SLACK_TOKEN']
  end
end
