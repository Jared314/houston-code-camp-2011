require 'spec_helper'

describe SessionSuggestion do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:abstract) }
  it { should validate_presence_of(:bio) }
  it { should validate_presence_of(:email) }
  it { should_not allow_value("badformat").for(:email) }
  it { should allow_value("foobar@email.com").for(:email) }
end
