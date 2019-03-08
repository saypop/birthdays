require_relative '../lib/birthday_list.rb'

list = BirthdayList.new
p "step1"
list.add("Garryn Kinsey", "24/04/1984")
list.add("Jaques Mulder", "08/03/1984")
p "step2"
list.print_list
p "step3"
puts list.list_value[0][:dob]
p "step4"
list.today
