require 'rails_helper'

RSpec.describe Person, type: :model do

  describe 'valid user' do
    let(:user) { FactoryGirl.create(:person)}
    it 'is a valid user with all fields' do
      expect(user).to be_present
    end

    it 'must have a first name' do
      test_person = FactoryGirl.build(:person, first_name: ' ')
      expect(test_person).not_to be_valid
    end

    it 'first name must have at least 2 charaters' do
      test_person = FactoryGirl.build(:person, first_name: 'r')
      expect(test_person).not_to be_valid
    end

    it 'must have a last name' do
      test_person = FactoryGirl.build(:person, last_name: ' ')
      expect(test_person).not_to be_valid
    end

    it 'first name must have at least 2 charaters' do
      test_person = FactoryGirl.build(:person, last_name: 'r')
      expect(test_person).not_to be_valid
    end

    it 'must have an email address' do
      test_person = FactoryGirl.build(:person, email: ' ')
      expect(test_person).not_to be_valid
    end
    it 'must have a valid email address' do
      test_person = FactoryGirl.build(:person, email: "dsdsccc")
      expect(test_person).not_to be_valid
    end
  end
end
