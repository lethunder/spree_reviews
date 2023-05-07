module Spree
  class ReviewsController < Spree::StoreController
    helper Spree::BaseHelper
    before_action :load_product, only: [:index, :new, :create]
    before_action :init_pagination, only: [:index]

    def index
      @approved_reviews = Spree::Review.default_approval_filter.where(product: @product).page(@pagination_page)
      @title = "#{@product.name} #{Spree.t(:reviews)}"
      if request.xhr?
        render partial: "index", locals: {product: @product, reviews: @approved_reviews}, layout: false, status: 200
      end
    end

    def new
      @review = Spree::Review.new(product: @product)
      authorize! :create, @review
      render template: "spree/reviews/new", layout: false, status: :ok
    end

    def create
      params[:review][:rating].sub!(/\s*[^0-9]*\z/, '') unless params[:review][:rating].blank?

      @review = Spree::Review.new(review_params)
      @review.product = @product
      @review.user = spree_current_user if spree_user_signed_in?
      @review.ip_address = request.remote_ip
      @review.locale = I18n.locale.to_s if SpreeReviews::Config[:track_locale]

      authorize! :create, @review
      if @review.save
        flash[:notice] = Spree.t(:review_successfully_submitted)
        redirect_to spree.product_path(@product)
      else
        render :new
      end
    end

    private

    def load_product
      @product = Spree::Product.friendly.find(params[:product_id])
    end

    def permitted_review_attributes
      [:rating, :title, :review, :name, :show_identifier, images: []]
    end

    def review_params
      params.require(:review).permit(permitted_review_attributes)
    end

    def init_pagination
      @pagination_page = params[:page].present? ? params[:page].to_i : 1
    end
  end
end
