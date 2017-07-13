require 'takeaway'

describe 'testing akeaway' do 
	context 'takeaway functions' do
		tk=Takeaway.new
		it 'checks lists items from menu' do
			#tk=Takeaway.new
			
			expect(tk.show_items).to eq ["curry", "chips", "eggs"]	
		end

		it 'takes input from the user' do
			expect(tk.enter_choice).to eq 'curry => 5, chips=>7'
		end

		it 'takes in values and adds them to the hash' do

			expect(tk.enter_choice).to eq 3
		end

		it 'lists choices' do 
			expect(tk.list_choices).to eq 5
		end

	end
end
