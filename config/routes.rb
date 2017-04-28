Rails.application.routes.draw do
    get("/flexible/square/:the_number", {:controller => "calculations", :action => "flex_square"})
    get("/flexible/square_root/:the_number", {:controller => "calculations", :action => "flex_square_root"})
    get("/flexible/payment/:interest_rate/:years/:amount", {:controller => "calculations", :action => "monthly_payment"})
    get("/flexible/random/:min/:max", {:controller => "calculations", :action => "random_number"})

    get("/square/new", {:controller => "calculations", :action => "square_form"})
    get("/square/results", {:controller => "calculations", :action => "square"})
    get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
    get("/square_root/results", {:controller => "calculations", :action => "square_root"})
    get("/payment/new", {:controller => "calculations", :action => "payment_form"})
    get("/payment/results", {:controller => "calculations", :action => "payment"})
    get("/random/new", {:controller => "calculations", :action => "random_form"})
    get("/random/results", {:controller => "calculations", :action => "random"})
    get("/random/results", {:controller => "calculations", :action => "recalculate"})
end
