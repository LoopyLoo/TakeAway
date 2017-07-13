class Takeaway
  #@meals={ "curry" => 15,"chips" => 12,"eggs" => 25 }
  def initialize()
    @meals={ "curry" => 15,"chips" => 12,"eggs" => 25 }
  end

  def print_item_list
      dinner=@meals.keys
      price=@meals.values

      for i in 0..@meals.size-1 do
      puts " item #{i+1} is .. #{dinner[i]}\tfor the price of £#{price[i]}"
      end
      return dinner
   end

   def add_to_list 
    input=0
    item_numbers =[]
    numbers_of=[]
     begin
        puts 'please enter number of the meal ... '
        item_number=gets.chomp
        if item_number.to_i != 0 then item_numbers<<item_number end

        puts '...and the number of these you require'
        number_of=gets.chomp
        if number_of.to_i != 0 then numbers_of<<number_of  end

        input+=1
         " input #{input} meals size #{@meals.size}"
      end while input != @meals.size

    show_order(item_numbers,numbers_of)
    return "input #{input} meals size #{@meals.size}"
    end

    def show_order(item_numbers,numbers_of)
    dinner=@meals.keys
    price=@meals.values
    sum=0
    for i in 0..item_numbers.size-1 do

      item_name=dinner[item_numbers[i].to_i-1]
      item_price=price[item_numbers[i].to_i-1]
      #puts "item number is.. #{item_numbers[i]} and quantity is #{numbers_of[i]} total cost is #{item_numbers[i].to_i * numbers_of[i].to_i}"
      puts "item  #{i+1} is #{item_name}\t cost per dish £#{item_price}  ordered #{numbers_of[i]}  items at a cost of  £#{numbers_of[i].to_i * item_price.to_i}"
      sum+=(numbers_of[i].to_i*item_price)
    end
    puts "                                                             Total cost is £#{sum}"
    return sum
  end

end