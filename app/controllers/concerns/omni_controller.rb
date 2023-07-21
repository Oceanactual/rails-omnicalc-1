class OmniController < ApplicationController
  def home
    render({:template => "omni/home"})
  end

  def square_new
    render({:template => "omni/square/new"})
  end

  def square_results
    @user_num = params.fetch("users_number").to_f
    @user_result = @user_num**2
    render({:template => "omni/square/results"})
  end

  def square_root_new
    render({:template => "omni/square_root/new"})
  end

  def square_root_results
    @user_num = params.fetch("users_number").to_f
    @user_result = @user_num**0.5
    render({:template => "omni/square_root/results"})
  end

  def random_new
    render({:template => "omni/random/new"})
  end

  def random_results
    @user_min= params.fetch("users_min").to_f
    @user_max= params.fetch("users_max").to_f
    @random = rand(@user_min..@user_max)
    render({:template => "omni/random/results"})
  end

  def payment_new
    render({:template => "omni/payment/new"})
  end

  def payment_results
    user_apr = params.fetch("users_apr")
    user_apr = user_apr.to_f
    user_principle = params.fetch("users_principle").to_f
    user_period = params.fetch("users_number_of_years").to_i
    user_months = user_period * 12
    user_apr_yearly = user_apr / 100
    user_apr_monthly = user_apr_yearly / 12
    equation_top = user_principle * user_apr_monthly
    bottom_parenth = 1 + user_apr_monthly
    exp_n = user_months * -1
    bottom_exp = bottom_parenth**exp_n
    final_bottom = 1 - bottom_exp
    users_payment = equation_top / final_bottom
    @apr = user_apr.to_fs(:percentage, precision: 4)
    @payment = users_payment.to_fs(:currency)
    @principal = user_principle.to_fs(:currency)
    @years = user_period
    render({:template => "omni/payment/results"})
  end
  
end
