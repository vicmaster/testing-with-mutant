require 'rspec'
require_relative '../lib/universe'

RSpec.describe Universe::Planet do
  subject { Universe::Planet.new(radius, area) }

  context 'venus' do
    let(:radius) { 6052 }
    let(:area) { 460_264_740 }

    it 'is spherical-ish' do
      expect(subject).to be_spherical
    end

    it 'is not perfectly spherical' do
      expect(subject).not_to be_spherical(0)
    end

  end

  context 'earth' do
    let(:radius) { 6378.1 }
    let(:area) { 510_000_000 }

    it 'is oblate, not spherical' do
      expect(subject).not_to be_spherical
    end
  end

  context 'namek' do
    let(:radius) { 0.5 }
    let(:area) { Math::PI - 0.00001 }

    it 'is spherical-ish, within the default tolerance' do
      expect(subject).to be_spherical
    end
  end
end
