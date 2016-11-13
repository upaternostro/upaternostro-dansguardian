require 'spec_helper'
describe 'dansguardian' do

  context 'with defaults for all parameters' do
    it { should contain_class('dansguardian') }
  end
end
