describe 'DatabaseServer' do

  def app
    DatabaseServer
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello test server')
  end

  it 'can be passed a key and value' do
    get '/set?', :somekey => "somevalue"
    expect(last_response).to be_ok
    expect(last_response.body).to eq("somevalue")

  end

  it 'returns the value stored at somekey' do
    get '/set?', :somekey => "somevalue"
    get '/get?key=somekey'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("somevalue")
  end
end
# When your server receives a request on
# http://localhost:4000/set?somekey=somevalue
# it should store the passed key and value in memory.
# When it receives a request on http://localhost:4000/get?key=somekey
# it should return the value stored at somekey. Store the data in memory,
# not in a database, but bear in mind that you will later need to add
# a database to this code."
