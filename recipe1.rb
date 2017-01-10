def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "you need #{ingredient[:quantity]} #{ingredient[:name]}"
end

def ask
  puts "do you have everything? (y/n)"
  @answer = gets.chomp
end

loop do
  ask
    if @answer == "y"
      puts "great, let's get started"
      break
    else
      puts "please go shopping and press \"y\" when you are ready"
    end
end
