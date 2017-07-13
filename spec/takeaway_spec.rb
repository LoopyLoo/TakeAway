require 'takeaway'

describe 'testing akeaway' do 
	context 'takeaway functions' do
		tk=Takeaway.new()
		it 'checks lists items from menu' do
			#tk=Takeaway.new		
			expect(tk.print_item_list).to eq ["curry", "chips", "eggs"]	
		end
		it 'takes in values and adds them to the hash' do
			expect(tk.add_to_list).to eq 'input 3 meals size 3'
		end

		it 'checks total is what it should be' do 
			item_number=[1]
			number_of=[2]
			expect(tk.show_order(item_number,number_of)).to eq 30
		end

		it 'prints out choices and totals from selections' do 
		end

	end
end
