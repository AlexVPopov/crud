require 'rails_helper'

describe Car, :type => :model do
  let(:car) { create :car }

  it 'is valid with valid attributes' do
    expect(car).to be_valid
  end

  context 'is invalid' do
    it 'without a model' do
      car.model = nil
      expect(car).to be_invalid
    end

    it 'without a year' do
      car.year = nil
      expect(car).to be_invalid
    end

    it 'with a year that it not an integer' do
      car.year = 'Nineteen fifty-six'
      expect(car).to be_invalid
    end

    it 'with an year prior to 1894' do
      car.year = 1700
      expect(car).to be_invalid
    end

    it 'with an year after the current year' do
      car.year = Time.now.year + 1
      expect(car).to be_invalid
    end

    it 'without kilometers' do
      car.kilometers = nil
      expect(car).to be_invalid
    end

    it 'with negative kilometers' do
      car.kilometers = -1000
      expect(car).to be_invalid
    end

    it 'without color' do
      car.color = nil
      expect(car).to be_invalid
    end
  end
end
