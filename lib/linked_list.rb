class List
  class Node
    attr_accessor :next_node, :value

    def initialize(val)
      @next_node = nil
      @value = val
    end
  end

  def initialize
    @head = nil
    @size = 0
  end

  def create_node(value)
    Node.new(value)
  end

  def append_value(value)
    new_node = create_node(value)

    if @head.nil?
      @head = new_node
      @size += 1
    else
      current_node = @head

      current_node = current_node.next_node while current_node.next_node
      current_node.next_node = new_node
      @size += 1
    end
  end

  def prepend_values(value)
    new_node = create_node(value)

    new_node.next_node = @head
    @head = new_node
    @size += 1
  end

  def to_s
    return "Lista goala!" if @head.nil?

    current_node = @head
    elements = []

    while current_node
      elements << "(#{current_node.value})"
      current_node = current_node.next_node
    end
    elements.join("->")
  end

  def size
    puts
    puts "The size of the list is:#{@size}"
  end

  def head
    puts
    puts "The head of the list is:#{@head.value}"
  end

  def tail
    current_node = @head
    current_node = current_node.next_node while current_node.next_node
    puts
    puts "The tail of the list is:#{current_node.value}"
  end

  def at_index(index)
    index2 = 0
    current_node = @head

    while current_node.next_node
      current_node = current_node.next_node
      index2 += 1

      break if index == index2
    end

    puts
    puts "The value at index #{index} is:#{current_node.value}"
  end

  def pop_element
    current_node = @head
    previous_node = nil

    nil if current_node.nil?
    @head=nil if current_node.next_node.nil?
    
    while current_node.next_node
      previous_node = current_node
      current_node = current_node.next_node
    end

    previous_node.next_node = nil
    @size-=1
  end

  def contains?(value)
    current_node=@head

    if current_node.next_node.nil? && current_node.value == value
        return true
    end

    while current_node.next_node
        if current_node.value == value
            return true
            break
        end
        current_node=current_node.next_node
    end
    
    false
  end

  def find_value(val)
    current_node=@head
    index=0
    index if current_node.next_node.nil? && current_node.value == val

    while current_node.next_node
        if current_node.value == val
            return index
            break
        end
        index+=1
        current_node=current_node.next_node
    end
  end

  def insert_at(val,index)
    
    new_node=create_node(val)
    

    if index==0
        new_node.next_node = @head
        @head=new_node
    end

    ind=0
    current_node=@head

    while current_node.next_node
        ind+=1
        break if ind==index
        
        current_node=current_node.next_node
    end

    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

end
