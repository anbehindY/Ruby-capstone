def youroption(option)
  puts option
end

def startapp(message)
  puts message
  loop do
    puts "\nPlease choose an options by entering a number"
    puts '1 - Exit'
    order = gets.chomp
    break if order == '1'

    youroption(order)
  end
end

startapp('We come to Catelog of my things')
