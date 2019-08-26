class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# All the above is to implement a Linked List
# I am setting value and next_node to the 'initialize' method
# I'm making value and next_node be accessible throughout this entire code by creating @value= and @next_node=

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# All of the above is to build up the linked list with nodes
# The above code lines says "This node number 1 equals to the linked list class, is new, and will be assigned the number 37."
# For node 2 and node 3, the contents is saying, this is the integer assigned to the node, and I want to also make a note that it should come before node 1 and then for node 3 it should come before node 2
# By a Linkedlist being a recursive datatype, using next_node is POINTING ---> to another linkedlist instance (or in this case, integer)


def print_values(list_node)
    #this is a method writtent to inform of what to print to the terminal
  if list_node
    print "#{list_node.value} --> "
    # This is telling us the specific "format" of the equation to print to the terminal
    print_values(list_node.next_node)
    # This is telling us the specific "equation" to print to the termainal
  else
    print "nil\n"
    return
    # This is the if and else statement to use to print the actual node list to the terminal and decide the formating of what will be printed to the termainal"
  end
end


class Stack

# The Stack is a data structure that is Last-In-First-Out LIFO
# The Stack format is the opposite of a queue
# The stack is like a stack of plates you were cooking and washing with

  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
    # This is how you implement the push of the value to the Stack class
    # You're bringing back in @data which is set to be accessible as nil, which is now equalling the code for identifying a new linkedlist entry
    # By it saying, linkedlistnode.new(value, @data), the value, @data
  end
  # This is intended to push a value onto the Stack class.


  def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end

def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end

  return stack.data
end

print_values(node3)
puts "---------"
revlist = reverse_list(node3)
print_values(revlist)

# The above chunk of code is how you implement the reverse_list method










