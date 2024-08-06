require "./lib/linked_list"

list = List.new

list.append_value("sakina")
list.append_value("lauren")
list.append_value("jamie")
list.append_value("jax")
list.prepend_values("james")
list.prepend_values("john")
list.prepend_values("andrei")
list.prepend_values("marcu")

puts list

list.size
list.head
list.tail
list.at_index(6)
list.pop_element

puts
puts "!! The list after pop !!"
puts
puts list
puts
puts "!! The size after pop !!"
list.size

puts
print "Ce valoare cauti:"
contine = gets.chomp.to_s
verifica = list.contains?(contine)
verfica_2 = nil
verifica2 = if verifica == true
              "este in lista"
            else
              "nu este in lista"
            end
puts
puts "Valoarea '#{contine}' #{verifica2}"

puts
print "Value to find the index of:"
value = gets.chomp.to_s
puts
puts "'#{value}' is at index:#{list.find_value(value)}"

list.insert_at(13, 2)
puts list

puts
list.remove_at(5)
puts list