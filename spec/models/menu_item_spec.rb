RSpec.describe MenuItem, type: :model do
  describe 'db table ' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:price).of_type(:integer) }
    it { is_expected.to have_db_column(:category).of_type(:string)}
  end

  describe 'Validation of title' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :category}
  end

  describe 'factory' do
    it 'expected to have valid factory' do
      expect(create(:menu_item)).to be_valid
    end
  end
end
