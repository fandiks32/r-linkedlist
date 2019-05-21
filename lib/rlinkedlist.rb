class RLinkedList
  
  @head
  @tail
  
  def initialize
  end

  def append(x)
    if head.nil?
      @head = @tail = Node.new(x, nil)
    else
      @tail.nxt = Node.new(x, nil)
    end
  end

  def prepend(x)
    if head.nil?
      @head = @tail = Node.new(x, nil)
    else
      h = @head.dup
      @head = Node.new(x, h)
    end
  end

  def at(i)
    pointr = @head
    while i > 1
      pointr = pointr.nxt
      i =- 1
    end
    pointr
  end

  def change(i, num)
    new = Node.new(x, nil)
    at(i-1).nxt = new
    new.nxt = at(i)
  end

  def remove(i, num)
    
  end

  def shift
    @head = @head.next
  end

  def pop
    pointr = @head
    while pointr.nxt.nxt != nil
      pointr = pointr.nxt
    end
    @tail = pointr
  end
  

  class Node
    @nxt
    @val

    def initialize(val, nex)
      @val = val
      @nxt = nxt
    end
  end
  
end
