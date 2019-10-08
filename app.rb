require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

  get "/square/:number" do
    num = params[:number]
    num_squared = num.to_i ** 2
    "#{num_squared}"
  end

  get "/say/:number/:phrase" do
    print_phrases = params[:phrase] * params[:number].to_i
    "#{print_phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op_type = params[:operation]

    case op_type
      when 'add'
        sum = num1 + num2
      when 'subtract'
        sum = num1 - num2
      when 'multiply'
        sum = num1 * num2
      when 'divide'
        sum = num1 / num2
      end
      sum.to_s
    end

  end