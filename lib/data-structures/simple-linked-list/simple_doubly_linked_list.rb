class SimpleDoublyLinkedList

  attr_reader :head, :tail
  def initialize(node = nil)
    @head = @tail = node unless node.nil?
  end

  def traverse(direction = :forward)
    current_node = head
    begin
      yield current_node
      if direction == :forward
        current_node.next
      elsif direction == :backward
        current_node.prev
      end
    end while current_node == head
  end

  def append(node, after_node = @tail)
    @head = @tail = node and return if @head.nil?

    before = after_node
    after = after_node.next
    node.prev = before
    node.next = after

    after.prev = node
    after = node
  end

  def delete(node)
    @head = @head.next if node == @head
    @tail = @tail.prev if node == @tail

    node.next.prev = node.prev
    node.prev.next = node.next
  end



end