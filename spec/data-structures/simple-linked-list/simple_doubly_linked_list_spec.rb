require_relative '../../spec_helper'
describe SimpleDoublyLinkedList do

  let(:head) { Node.new(3) }
  let(:node) { Node.new(4) }
  let(:list) { SimpleDoublyLinkedList.new(head) }
  let(:empty_list) { SimpleDoublyLinkedList.new }
  describe '#initialize' do
    context 'with node passed in' do
      it 'has a head node' do
       expect(list.head).to eq head
      end

      it 'has a tail node' do
        expect(list.tail).to eq head
      end
    end

    context 'without initial node' do
      it 'head node is empty' do
        expect(empty_list.head).to be_nil
      end

      it 'tail node is empty' do
        expect(empty_list.tail).to be_nil
      end
    end
  end

  describe '#traverse' do
    it 'yields to passed block' do
      expect(list).to receive(:traverse).and_yield
      list.traverse {}
    end
  end

  describe '#append' do
  end

  describe '#delete' do
  end
 
end