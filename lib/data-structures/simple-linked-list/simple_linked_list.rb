require_relative '../linked-list/node'
class SimpleLinkedList

  attr_reader :head
  def initialize(node = nil)
    @head = node unless node.nil?
  end

  def append_to_tail(node)
    @head = node if @head.nil?
    
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = node
  end

end