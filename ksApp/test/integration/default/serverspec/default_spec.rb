require 'serverspec'

set :backend, :exec

describe 'ksApp::default' do
  it 'installed apache2 package' do
    expect(package('apache2')).to be_installed
    expect(service('apache2')).to be_enabled
  end
end