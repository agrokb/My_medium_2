class UsersController < ApplicationController
 def pricing
 end
 def payment
  @fee = ENV["price_#{params[:type]}"]
  @payment_type = (params[:type] == 'vip') ? 'VIP会員' : '白金會員'
  @token = gate.client_token.generate
 end

 private
 def gate
    gateway = Braintree::Gateway.new(
        environment: :sandbox,
        merchant_id:  ENV["braintree_merchant_id"],
        public_key:  ENV["braintree_public_key"],
        private_key: ENV["braintree_private_key"],
      )
 end
end
