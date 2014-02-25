totals = []

subtotal = 0

input = nil

until input == "done"

  puts "What is the sale price?"

  input = gets.chomp

  unless input == "done"
    totals.push(input.to_f)
    subtotal = subtotal + input.to_f
    puts "Subtotal is: $#{'%.2f' % subtotal}\n"
  end

end

puts "Your items are:"
totals.each do |item|
  puts "$#{'%.2f' % item}\n"
  end

puts "Subtotal is: $#{'%.2f' % subtotal}\n"

puts "How much money did the customer give you?"

provided = gets.chomp.to_f

change = provided - subtotal

if change >= 0
  puts "Change due is: \n$#{'%.2f' % change} due \n at #{Time.now.strftime('%m/%d/%y %I:%M %p')}."
else
  puts "Not enough money given by customer!"
  exit
end
