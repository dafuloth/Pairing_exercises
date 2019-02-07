require 'bike.rb'

describe Bike do

  it 'responds to' do
    expect(subject).to respond_to :working?
  end

  # it { is_expected.to respond_to :working?}

end
