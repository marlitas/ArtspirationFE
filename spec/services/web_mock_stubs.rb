module WebmockStubs
  def self.mock_user
    {
      'data': {
        'id': '1',
        'type': 'user',
        'attributes': {
          'name': 'Big Chungus',
          'email': 'bigchungus@gmail.com'
        }
      }
    }.to_json
  end
end
