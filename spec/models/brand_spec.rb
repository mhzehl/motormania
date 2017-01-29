require 'rails_helper'

describe Brand do
  it { is_expected.to have_many(:motorcycles) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:year_of_founding) }
  it { is_expected.to validate_presence_of(:country_of_origin) }
end
