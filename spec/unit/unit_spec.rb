# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'Harry Potter', author: "JK Rowling", price: "30", publishedDate: Date.new(1997,6,26))
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid, without a title' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid, without a author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end
    
    it 'is not valid, without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid, without a published date' do
        subject.publishedDate = nil
        expect(subject).not_to be_valid
    end
end