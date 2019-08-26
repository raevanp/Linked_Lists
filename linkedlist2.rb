class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# All the above is to implement a Linked List
# I am setting value and next_node within the 'initialize' method
# I'm making value and next_node be accessible throughout this entire code by creating @value= to a variable and @next_node= a variable

def print_values(list_node)
  print "#{list_node.value} --> "

  # This is telling the terminal to print the string # of: print_values.@value with -->

  if list_node.next_node.nil?
    print "nil\n"
    return
    # the if statement is saying that if the combination of list_node.next_node.nil?(unknown)
    # you need to print the unknown/n
    # BUT if from the list it's only the list_node.next_node, print that value. 
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list, previous=nil)
  # This method is to reverse the linked list.
  # Reverse_list is attached to two variables: list and previous number which equals to an unknown nil.

  current_head = list.next_node
  # We're only setting these variables equal for this block of code.
  list.next_node = previous
  # We're only setting these variables equal for this block of code: Really, it's saying that current_head = nil.

  if current_head
    reverse_list(current_head, list)
  else
    list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# All of the above is to build up the linked list with nodes
# The above code lines says "This node number 1 equals to the linked list class, is new, and will be assigned the number 37."
# For node 2 and node 3, the contents is saying, this is the integer assigned to the node, and I want to also make a note that it should come before node 1 and then for node 3 it should come before node 2
# By a Linkedlist being a recursive datatype, using next_node is POINTING ---> to another linkedlist instance (or in this case, integer)

print_values(node3)

# This is telling the terminal to print the combination of linkedlistnode.new(12,node2) which is really whatever is contained in node1 & node2.

puts "-------"
revlist = reverse_list(node3)
# This is what rounds out the code for the terminal. 
# Create a method where revlist is set to equal to reverse_list(node3), which is technically: (list, previous=nil)(node3)
print_values(revlist)

# We're telling the terminal to print the contents of print_values and revlist.

# Now, this entire block of code using reverse_list is excluding the need to use anything with Stack. 