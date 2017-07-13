class Takeaway

  def initialize()
  	@meals={ "curry" => 15,"chips" => 12,"eggs" => 25 }
	#@meals={ "curry" => 15,"chips" => 12,"sausages and beans" => 25 }
	#hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
	@choices={'Item'=> 'price' } 
  end

  def show_items()
      @meals.keys      
  end

  def enter_choice

  	
  	begin  
  	'please enter '
  	input=gets.chomp
  	puts "Please enter x to quit anything else to continue"
  	puts input
  	  puts 'please enter number of the meal ... '
  	  item_number=gets.chomp
  	  puts '  and the number of these you require'
  	  number_of=gets.chomp
  	  "item #{item_number} number #{number_of}"  
  	  @choices[item_number] =number_of
   	end while input==0
  end

  def get_choices
  	  	 
  	  puts 'please enter number of the meal ... '
  	  item_number=gets.chomp
  	  puts '  and the number of these you require'
  	  number_of=gets.chomp
  	  "item #{item_number} number #{number_of}"  
  	  @choices[item_number] =number_of
  	  #input=item_number
  	end
  	def list_choices 
  		@choice.each do |key,value|
  			puts #{key}
  		end
  	end

end
