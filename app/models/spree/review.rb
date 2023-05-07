class Spree::Review < ActiveRecord::Base
  paginates_per 3
  RATING = {:"5" => I18n.t("spree.rating_note.excellent"), :"4" => I18n.t("spree.rating_note.very_good"), :"3" => I18n.t("spree.rating_note.average"), :"2" => I18n.t("spree.rating_note.poor"), :"1" => I18n.t("spree.rating_note.terrible")}
  belongs_to :product, touch: true
  belongs_to :user, class_name: Spree.user_class.to_s
  has_many   :feedback_reviews

  after_save :recalculate_product_rating, if: :approved?
  after_destroy :recalculate_product_rating

  validates :name, :review, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    message: :you_must_enter_value_for_rating
  }, presence: true

  default_scope { order('spree_reviews.created_at DESC') }

  scope :localized, ->(lc) { where('spree_reviews.locale = ?', lc) }
  scope :most_recent_first, -> { order('spree_reviews.created_at DESC') }
  scope :oldest_first, -> { reorder('spree_reviews.created_at ASC') }
  scope :preview, -> { limit(SpreeReviews::Config[:preview_size]).oldest_first }
  scope :approved, -> { where(approved: true) }
  scope :not_approved, -> { where(approved: false) }
  scope :default_approval_filter, -> { SpreeReviews::Config[:include_unapproved_reviews] ? all : approved }

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_fit: [nil, 200]
  end

  def feedback_stars
    return 0 if feedback_reviews.size <= 0

    ((feedback_reviews.sum(:rating) / feedback_reviews.size) + 0.5).floor
  end

  def recalculate_product_rating
    product.recalculate_rating if product.present?
  end
end
