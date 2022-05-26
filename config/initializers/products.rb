# frozen_string_literal: true

Rails.configuration.to_prepare do
  module ReviewConcern
    # Gives us some convenient shortcuts, like `prepended`
    extend ActiveSupport::Concern

    # When prepended into a class, define our callback
    prepended do
      has_many :reviews
    end

    def stars
      avg_rating.try(:round) || 0
    end

    def recalculate_rating
      self[:reviews_count] = reviews.reload.approved.count
      self[:avg_rating] = if reviews_count > 0
                            reviews.approved.sum(:rating).to_f / reviews_count
                          else
                            0
                          end
      save
    end
  end

  Spree::Product.prepend ReviewConcern
end
