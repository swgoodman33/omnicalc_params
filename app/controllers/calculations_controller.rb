class CalculationsController < ApplicationController
    def flex_square
        # params = {"the_number"=>"17"}
        @user_provided_number = params["the_number"].to_f
        @squared_number = @user_provided_number**2
      render("calculations/flex_square.html.erb")
    end
    def flex_square_root
        @user_provided_number = params["the_number"].to_f
        @square_root_number = @user_provided_number**(0.5)
      render("calculations/flex_square_root.html.erb")
    end
    def monthly_payment
        @interest_rate = ""
        @years = ""
        @amount = ""
        @monthly_payment = ""
      render("calculations/flexible_payment.html.erb")
    end
    def square_form
      render("calculations/square_form.html.erb")
    end
    def square
      @user_provided_number = params["user_provided_number"].to_f
      @squared_number = @user_provided_number**2
      render("calculations/square.html.erb")
    end
end
