module WebmockStubs
  def self.mock_user
    {
      'data': {
        'id': '1',
        'type': 'user',
        'attributes': {
          'name': 'Big Chungus',
          'email': 'bigchungus@gmail.com',
          'token': 'iahshd2ihi2hd'
        }
      }
    }.to_json
  end

  def self.mock_artworks
    {
      'data': [{
        'id': '1',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      },
      {
        'id': '2',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/large.jpg',
          'title': 'Violin',
          'artist': 'Sparky',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      },
      {
        'id': '3',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/E-k-uLoQADM8AjadsSKHrA/large.jpg',
          'title': 'Monroe',
          'artist': 'Luna',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      }
    ]}.to_json
  end
  def self.mock_artwork_liked
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      }
    }.to_json
  end

  def self.mock_artwork_not_liked
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'false'
        }
      }
    }.to_json
  end

  def self.mock_artworks_removed_like
    {
      'data': [{
        'id': '2',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/large.jpg',
          'title': 'Violin',
          'artist': 'Sparky',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      },
      {
        'id': '3',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/E-k-uLoQADM8AjadsSKHrA/large.jpg',
          'title': 'Monroe',
          'artist': 'Luna',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      }
    ]}.to_json
  end
end
