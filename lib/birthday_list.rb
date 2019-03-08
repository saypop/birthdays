require 'date'

class BirthdayList
  attr_reader :list

  def initialize
    @list = []
  end

  def add (name, dob)
    @list << {name: name, dob: dob}
  end

  def print_list
    # puts "#{@list[0][:name]}: #{@list[0][:dob]}"
    @list.each { |friend| puts "#{friend[:name]}: #{friend[:dob]}" }
  end

  def today
    @list.each do |friend|
      if Date.parse(friend[:dob]).month == Date.today.month && Date.parse(friend[:dob]).day == Date.today.day
        puts "It's #{friend[:name]}'s birthday today! They are #{Date.today.year - Date.parse(friend[:dob]).year} years old!"
      end
    end
  end

  def list_value
    @list
  end

end
