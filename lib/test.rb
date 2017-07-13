

  def start()
  	#@meals={ "curry" => 15,"chips" => 12,"eggs" => 25 }

	meals={ "curry" => 15,"chips" => 12,"sausages and beans" => 25 }

  end

  def print_out 
  	meals.each do |n| 
  	puts "each one  #{n}"
  end
end

  def add_to_list 
  	input=1
  	item_numbers =[]
	numbers_of=[]
	begin
		
  	  	puts 'please enter number of the meal ... '
  	  	item_number=gets.chomp
  	  	input=item_number
  	  	item_numbers<<item_number

  	  	puts '  and the number of these you require'
  	  	number_of=gets.chomp
  	  	numbers_of<<number_of
  	  	 
   	end while input!="0"

   		puts "number of items  #{item_numbers.size} quantity #{numbers_of}"
   		for i in 0..item_numbers.size-1 do
   			puts "item number is.. #{item_numbers[i]} and quantity is #{numbers_of[i]} total cost is #{item_numbers[i].to_i * numbers_of[i].to_i}"
   		  end
   		

  	end

  	def hash_to_array
  		dinners={ "curry" => 15,"chips" => 12,"sausages and beans" => 25 }
  		dinner=dinners.keys
  		price=dinners.values
  		for i in 0..dinners.size-1 do
  		puts " dish #{dinner[i]}  for the price of #{price[i]}"
  	end
  	end
