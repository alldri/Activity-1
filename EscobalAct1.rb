class Atm

	def balance=(balance)
		@balance = balance
	end
	def deposit=(deposit)
		@deposit = deposit
	end
	def withdraw=(withdraw)
		@withdraw = withdraw
	end
	def make_deposit
		@balance = @deposit + @balance
	end
	def make_withdraw
		@balance = @balance - @withdraw
	end
	def display_balance
		print  @balance
	end
	def display_deposit
		print @deposit
	end
	def display_withdraw
		print @withdraw
	end	
	def get_balance
		@balance
	end
end

obj = Atm.new
obj.balance = 0.0

puts "Choose transaction"
puts "Press 1 to Display Account Balance"
puts "Press 2 to Deposit"
puts "Press 3 to Withdraw"
puts "Press 4 to Exit"

choice = gets.chomp

case choice
when '1'
	obj.display_balance
when '2'
	print 'Enter amount: '
	dep = Float(gets.chomp)
	obj.deposit = dep
	print 'Previuos Balance: '
	puts obj.display_balance
	obj.make_deposit
	print 'Current balance: '
	obj.display_balance
when '3'
	print 'Enter amount: '
	wit = Float(gets.chomp)
	if wit > obj.get_balance
		puts 'Withdraw amount is greater than current balance'
		print'Current balance is: '
		puts obj.display_balance
	else
		obj.withdraw = wit
		print 'Previous Balance: '
		puts obj.display_balance
		obj.make_withdraw
		print 'Current balance: '
		obj.display_balance
	end
when '4'
	exit
end



