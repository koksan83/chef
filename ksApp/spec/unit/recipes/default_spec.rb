require 'spec_helper'

describe 'ksApp::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs apache2 package' do
    expect(chef_run).to install_package('apache2')
  end

  it 'writes www index file' do
    expect(chef_run).to create_template('/var/www/html/index.html')
      .with(owner: 'root')
      .with(group: 'wheel')
      .with(mode: '0644')
  end

  it 'checks index file content' do
    expect(chef_run).to render_file('/var/www/html/index.html')
      .with_content('hello world')
  end
end