require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
      task = Task.new(description: 'This is a test description.').save
      expect(task).to eq(false)
    end

    it 'ensures description presence' do
      task = Task.new(name: 'Test').save
      expect(task).to eq(false)
    end

    it 'should save successfully' do
      task = Task.new(name: 'Test', description: 'This is a test description.').save
      expect(task).to eq(true)
    end
  end
  context 'scope test' do
  end
end
