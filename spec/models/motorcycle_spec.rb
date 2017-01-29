require 'rails_helper'

describe Motorcycle do
  it { is_expected.to belong_to(:brand) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:category) }
  it { is_expected.to validate_presence_of(:production_since) }
end
