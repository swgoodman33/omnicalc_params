Rails.application.routes.draw do
    get("/flexible/square/:the_number", {:controller => "calculations", :action => "flex_square"})
    get("/flexible/square_root/:the_number", {:controller => "calculations", :action => "flex_square_root"})
    get("/flexible/payment/:interest_rate/:years/:amount", {:controller => "calculations", :action => "monthly_payment"})

    get("/square/new", {:controller => "calculations", :action => "square_form"})
    get("/square/results", {:controller => "calculations", :action => "square"})
end
