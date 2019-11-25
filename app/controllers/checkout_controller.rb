class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:id])
    if product.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types:['card'],
      line_items:[{
        name:product.designation,
        amount:product.amount,
        currency: 'cad',
        quantity: 1
      }],
      {
        name:'PST',
        amount:tax.pst * product.amount
      }
      {
        name:'GST',
        amount: tax.gst * product.amount
      }
      # {
      #   name:'HST',
      #   amount: tax.hst * product.amount
      # }
      # {
      #   name: 'QST',
      #   amount: tax.qst * product.amount
      # }
      success_url: checkout_successful_url, +'?session_id = {CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.Payment_intent)
  end

  def cancel
  end

end
