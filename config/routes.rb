Rails.application.routes.draw do
  get("/", {:controller => "omni", :action => "home"})
  get("/square/new", {:controller => "omni", :action => "square_new"})
  get("/square/results", {:controller => "omni", :action => "square_results"})
  get("/square_root/new", {:controller => "omni", :action => "square_root_new"})
  get("/square_root/results", {:controller => "omni", :action => "square_root_results"})
  get("/random/new", {:controller => "omni", :action => "random_new"})
  get("/random/results", {:controller => "omni", :action => "random_results"})
  get("/payment/new", {:controller => "omni", :action => "payment_new"})
  get("/payment/results", {:controller => "omni", :action => "payment_results"})
end
