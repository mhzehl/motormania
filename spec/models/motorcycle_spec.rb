require 'rails_helper'

describe Motorcycle do
  it { is_expected.to belong_to(:brand) }
end
