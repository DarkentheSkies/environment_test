require 'rails_helper'


RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'robot fish', author: 'isaac tuna', price: '$20.00', publishDate: 'august 25, 1997')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.publishDate = nil
    expect(subject).not_to be_valid
  end
end
