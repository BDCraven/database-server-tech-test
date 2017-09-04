describe 'DatabaseServer' do

  def app
    DatabaseServer
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello test server')
  end
end
