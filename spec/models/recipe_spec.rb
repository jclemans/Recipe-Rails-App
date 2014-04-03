require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :slug_name }
  it { should have_and_belong_to_many :tags }
  it { should have_many :ingredients }
  it { should ensure_inclusion_of(:rating).in_range(0..5) }

end
