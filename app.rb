require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversed_name = @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    squared_num = @number ** 2
    squared_num.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]

    "#{@phrase}\n" * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 =params[:word1]
    @word2 =params[:word2]
    @word3 =params[:word3]
    @word4 =params[:word4]
    @word5 =params[:word5]

    [@word1, @word2, @word3, @word4, "#{@word5}."].join(" ")
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @op == "add"
      sum = @num1 + @num2
      sum.to_s
    elsif @op == "subtract"
      sum = @num1 - @num2
      sum.to_s
    elsif @op == "multiply"
      sum = @num1 * @num2
      sum.to_s
    elsif @op == "divide"
      sum = @num1 / @num2
      sum.to_s
    end
  end
end
