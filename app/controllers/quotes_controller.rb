class QuotesController < ApplicationController
  def index
    @quotes = Quote.all

    if current_user.user_type == 'printer'
      @quotes_for_listing = Listing.find(params[:listing]).quotes.where(
        printer_id: Printer.find_by_user_id(current_user.id)
      )
    else
      @quotes_for_listing = Listing.find(params[:listing]).quotes
    end
  end

  def show
    id = params[:id]
    @quote = Quote.find(id)

    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      client_reference_id: @quote.id,
      customer_email: @quote.listing.user.email,
      line_items: [{
        name: "Quote id: #{@quote.id}",
        description: @quote.listing.description,
        amount: (@quote.total_price * 100).to_i,
        currency: 'aud',
        quantity: 1
      }],
      success_url: "https://threedirections.herokuapp.com/payments/success?quote_id=#{@quote.id}",
      cancel_url: 'https://threedirections.herokuapp.com/cancel'
    )
    @stripe_session_id = stripe_session.id

    set_quote_arrays
  end

  def create
    if current_user.user_type == 'printer'
      @quote = Quote.create(
        total_price: params[:quote][:total_price],
        job_size: params[:quote][:job_size],
        turnaround_time: params[:quote][:turnaround_time],
        has_job: false,
        printer_id: params[:quote][:printer_id],
        listing_id: params[:quote][:listing_id]
      )

      if @quote.errors.any?
        @listing = params[:quote][:listing_id].to_i
        render :new, listing: @quote[:listing_id]
      else
        redirect_to quote_path(@quote.id)
      end

    end
  end

  def new
    @quote = Quote.new
  end

  def my_quotes
    @user_id = current_user.id
    @quotes = Quote.all

    set_quote_arrays

    #Set total quote amounts so we can display a message if it = 0
    @amount_of_user_quotes = @past_quotes.count + @open_quotes.count
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update(quote_params)
      redirect_to(@quote)
    else
      render "edit"
    end
  end

  def destroy
    Quote.find(params[:id]).destroy

    redirect_to quotes_path
  end

  private

  def quote_params
    params.require(:quote).permit(
      :total_price,
      :job_size,
      :turnaround_time,
      :printer_id,
      :listing_id
    )
  end

  def set_quote_arrays
    if current_user.user_type == 'printer'
      @past_quotes = Quote.joins(:printer).where(
        printers: { user_id: current_user.id },
        has_job: true
      )
      @open_quotes = Quote.joins(:printer).where(
        printers: { user_id: current_user.id },
        has_job: false
      )
    elsif current_user.user_type == 'designer'
      @past_quotes = Quote.joins(:listing).where(
        listings: { user_id: current_user.id },
        has_job: true
      )
      @open_quotes = Quote.joins(:listing).where(
        listings: { user_id: current_user.id },
        has_job: false
      )
    else
      redirect_to root_path
    end

    @amount_of_user_quotes = @past_quotes + @open_quotes
  end
end