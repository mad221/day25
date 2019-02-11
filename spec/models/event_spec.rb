require 'rails_helper'
require 'factory_bot'

RSpec.describe Event, type: :model do
  before(:each) do
		@event = FactoryBot.create(:event)
  end

  it "has a valid factory" do
    expect(build(:event)).to be_valid
  end
  context "validation" do
    it "is valid with valid attributes" do
      expect(@event).to be_a(Event)
    end
    describe "#event" do
      it { expect(@event).to validate_presence_of(:title) }
      it { expect(@event).to validate_presence_of(:description) }
      it { expect(@event).to validate_presence_of(:start_date) }
      it { expect(@event).to validate_presence_of(:duration) }
      it { expect(@event).to validate_presence_of(:location) }
      it { expect(@event).to validate_presence_of(:price) }
      it { expect(@event).to validate_presence_of(:user) }

      it { is_expected.to_not allow_value("").for(:title) }
		end
  end
