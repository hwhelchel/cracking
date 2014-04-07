require_relative '../../spec_helper'
describe SimpleLinkedList do

  let(:head){ Node.new(3) }
  let(:node){ Node.new(5) }
  let(:headless_linked_list){ SimpleLinkedList.new }
  let(:linked_list){ SimpleLinkedList.new(head) }
  
  describe '#head' do
    it 'returns the head node' do
      expect(linked_list.head).to eq head
    end
  end

  describe '#append_to_tail' do
    context 'with set head' do
      it "updates the last node's next value" do
        expect{
          linked_list.append_to_tail(node)
          }.to change { linked_list.head.next }.to node
      end
    end

    context 'without set head' do
      it 'sets the node as the head' do
        expect{
          headless_linked_list.append_to_tail(node)
        }.to change { headless_linked_list.head }.to node
      end
    end
  end

  describe '#delete' do
    context 'node to be deleted is the head' do
      it 'removes the head' do
        linked_list.delete(head)
        expect(linked_list.head).to be_nil
      end
    end

    context 'node to be deleted is not the head' do
      it 'removes the node' do
        linked_list.append_to_tail(node)
        linked_list.delete(node)
        expect(linked_list.head.next).to be_nil
      end
    end

  end

end