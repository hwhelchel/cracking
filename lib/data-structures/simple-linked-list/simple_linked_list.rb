require_relative '../linked-list/node'
class SimpleLinkedList

  attr_reader :head
  def initialize(node = nil)
    @head = node unless node.nil?
  end

  def append_to_tail(node)
    @head = node if head.nil?
    
    current_node = head
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = node

    head
  end

  def delete(node)
    if head == node
      @head = head.next
      return
    end
    current_node = head

    while current_node.next != nil
      if current_node.next == node
        current_node.next = current_node.next.next
        break
      end
      current_node = current_node.next
    end

    head
  end

end