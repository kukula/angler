require 'rails_helper'

RSpec.describe Catch, type: :model do
  it { is_expected.to validate_presence_of(:angler_name) }
end
