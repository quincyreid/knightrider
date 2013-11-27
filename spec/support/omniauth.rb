OmniAuth.config.test_mode = true

OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
  :provider => "github",
  :uid => "123456789",
  :info => {
    :name => "Ella Yelich-O'Connor",
    :email => "ella@lordemusic.com",
    :first_name => "Ella",
    :last_name => "Yelich-O'Connor",
    :image => "https://2.gravatar.com/avatar/6ae4272ecc4f00018f8d184d5f60eb9b?d=https%3A%2F%2Fidenticons.github.com%2Ff1a8025bfb552b44aa80b40280a777b0.png&r=x&s=440",
    :location => 'Auckland, New Zealand'
  },
  :credentials => {
    :token => "token",
    :refresh_token => "another_token",
    :expires_at => 1354920555,
    :expires => true
  }
})