require 'rails_helper'

describe CatchSerializer do
  let(:expected) do
    {
      angler_name: 'Luke',
      species: 'R2D2',
      weight: 57,
      length: 73,
      latitude: 51.5032520,
      longitude: -0.1278990,
      created_at: Time.current
    }
  end
  let(:catch) { Catch.create(expected) }
  subject(:serializer) { described_class.new(catch) }

  it 'serializes correctly' do
    expect(serializer.as_json).to eq expected
  end
end
