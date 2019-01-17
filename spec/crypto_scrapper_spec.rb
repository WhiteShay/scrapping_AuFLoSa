require_relative '../lib/crypto_scrapper.rb'

describe 'the crypto_san' do
  it'should have more than 50 crypto' do
    expect(crypto_scan).to have_at_least(50).items
  end
end

