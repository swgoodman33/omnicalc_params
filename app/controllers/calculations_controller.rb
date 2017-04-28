class CalculationsController < ApplicationController
    def flex_square
        # params = {"the_number"=>"17"}
        @user_provided_number = params["the_number"].to_f
        @squared_number = @user_provided_number**2
      render("calculations/flex_square.html.erb")
    end
    def flex_square_root
        @user_provided_number = params["the_number"].to_f
        @square_root_number = sprintf('%.2f', @user_provided_number**(0.5))
      render("calculations/flex_square_root.html.erb")
    end
    def monthly_payment
        @interest_rate = params["interest_rate"].to_f/100
        @years = params["years"].to_f
        @amount = params["amount"].to_f
        @monthly_payment = (@amount*(@interest_rate/1200))/(1-(1+(@interest_rate/1200))**(-@years*12))
      render("calculations/flexible_payment.html.erb")
    end
    def random_number
        @min = params["min"].to_i
        @max = params["max"].to_i
        @random_number = [*@min...@max].sample
      render("calculations/flexible_random.html.erb")
    end
    def square_form
      render("calculations/square_form.html.erb")
    end
    def square
      @user_provided_number = params["user_provided_number"].to_f
      @squared_number = @user_provided_number**2
      render("calculations/square.html.erb")
    end
    def square_root_form
      render("calculations/square_root_form.html.erb")
    end
    def square_root
      @user_provided_number = params["user_provided_number"].to_f
      @squared_root = @user_provided_number**(0.5)
      render("calculations/square_root.html.erb")
    end
    def payment_form
      render("calculations/payment_form.html.erb")
    end
    def payment
      @interest_rate = params["interest_rate"].to_f
      @years = params["years"].to_f
      @amount = params["amount"].to_f
      @monthly_payment = (@amount*(@interest_rate/1200))/(1-(1+(@interest_rate/1200))**(-@years*12))
      render("calculations/payment.html.erb")
    end
    def random_form
      render("calculations/random_form.html.erb")
    end
    def random
      @min = params["min"].to_i
      @max = params["max"].to_i
      @random_number = [*@min...@max].sample
      render("calculations/random.html.erb")
    end
    def recalculate
      @min = params["min"].to_i
      @max = params["max"].to_i
      @random_number = [*@min...@max].sample
      render("calculations/random.html.erb")
    end
end
