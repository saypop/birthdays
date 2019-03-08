require 'birthday_list'
describe BirthdayList do

  # check if object responds to .add
  it { is_expected.to respond_to :add }
  # check if .add takes name and dob as arguments
  it { is_expected.to respond_to(:add).with(2).argument }
  # check if add stores the arguments in object
  it 'stores the name and dob' do
    expect(subject.add("Some Friend", "24/12/1985")).to eq [{name: "Some Friend", dob: "24/12/1985"}]
  end
  # check if there is a method to print
  it { is_expected.to respond_to :print_list }
  # check if printlist actually prints the list
  it 'should print single entry' do
    list = BirthdayList.new
    list.add("Some Friend", "24/12/1985")
    expect { list.print_list }.to output("Some Friend: 24/12/1985\n").to_stdout
  end
  it 'should print multiple entries' do
    list = BirthdayList.new
    list.add("Some Friend", "24/12/1985")
    list.add("Other Friend", "08/03/1985")
    expect { list.print_list }.to output("Some Friend: 24/12/1985\nOther Friend: 08/03/1985\n").to_stdout
  end
  # check to see if class responds to .today
  it { is_expected.to respond_to (:today) }
  # check to see if today prints out a message when there is a friend whose birthday is today
  it 'should print a special message about today' do
    list = BirthdayList.new
    list.add("Some Friend", "24/12/1985")
    list.add("Other Friend", "08/03/1985")
    expect { list.today }.to output("It's Other Friend's birthday today! They are 34 years old!\n").to_stdout
  end
  # check to see if today does nothing when there is no friend whose birthday is today
  it 'should print a special message about today' do
    list = BirthdayList.new
    list.add("Some Friend", "24/12/1985")
    list.add("Other Friend", "07/03/1985")
    expect { list.today }.not_to output().to_stdout
  end


end
