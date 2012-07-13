require 'spec_helper'

describe SessionSuggestion do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:abstract) }
  it { should validate_presence_of(:bio) }
  it { should validate_presence_of(:email) }
end
