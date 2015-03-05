require 'rails_helper'

RSpec.describe Note, :type => :model do
  context '(validations)' do
    it { expect(subject).to validate_presence_of :name }
    it { expect(subject).to validate_presence_of :content }
  end
end
