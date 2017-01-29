require 'rails_helper'

describe Brand do
  it { is_expected.to have_many(:motorcycles) }
end
