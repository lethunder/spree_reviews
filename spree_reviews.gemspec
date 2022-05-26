# -*- encoding: utf-8 -*-
# stub: spree_reviews 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_reviews".freeze
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Paul Callaghan".freeze]
  s.date = "2022-05-26"
  s.description = "Basic review and ratings facility for Spree".freeze
  s.email = "paulcc.two@gmail.com".freeze
  s.files = [".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, ".travis.yml".freeze, "Appraisals".freeze, "CHANGELOG.md".freeze, "CONTRIBUTING.md".freeze, "Gemfile".freeze, "LICENSE.md".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/images/store/reviews/delete.gif".freeze, "app/assets/images/store/reviews/star.gif".freeze, "app/assets/javascripts/spree/backend/spree_reviews.js".freeze, "app/assets/javascripts/spree/frontend/spree_reviews.js".freeze, "app/assets/stylesheets/spree/backend/spree_reviews.css".freeze, "app/assets/stylesheets/spree/frontend/spree_reviews.css.erb".freeze, "app/controllers/spree/admin/feedback_reviews_controller.rb".freeze, "app/controllers/spree/admin/review_settings_controller.rb".freeze, "app/controllers/spree/admin/reviews_controller.rb".freeze, "app/controllers/spree/feedback_reviews_controller.rb".freeze, "app/controllers/spree/products_controller_decorator.rb".freeze, "app/controllers/spree/reviews_controller.rb".freeze, "app/helpers/spree/api/api_helpers_decorator.rb".freeze, "app/helpers/spree/reviews_helper.rb".freeze, "app/models/spree/feedback_review.rb".freeze, "app/models/spree/product_decorator.rb".freeze, "app/models/spree/review.rb".freeze, "app/models/spree/review_setting.rb".freeze, "app/models/spree/reviews_ability.rb".freeze, "app/overrides/add_reviews_after_product_properties.rb".freeze, "app/overrides/add_reviews_tab_to_admin.rb".freeze, "app/overrides/add_reviews_to_admin_configuration_sidebar.rb".freeze, "app/views/spree/admin/feedback_reviews/index.html.erb".freeze, "app/views/spree/admin/review_settings/edit.html.erb".freeze, "app/views/spree/admin/reviews/_form.html.erb".freeze, "app/views/spree/admin/reviews/edit.html.erb".freeze, "app/views/spree/admin/reviews/index.html.erb".freeze, "app/views/spree/feedback_reviews/_form.html.erb".freeze, "app/views/spree/feedback_reviews/_summary.html.erb".freeze, "app/views/spree/feedback_reviews/create.js.erb".freeze, "app/views/spree/reviews/_form.html.erb".freeze, "app/views/spree/reviews/_stars.html.erb".freeze, "app/views/spree/reviews/index.html.erb".freeze, "app/views/spree/reviews/new.html.erb".freeze, "app/views/spree/shared/_rating.html.erb".freeze, "app/views/spree/shared/_review.html.erb".freeze, "app/views/spree/shared/_review_summary.html.erb".freeze, "app/views/spree/shared/_reviews.html.erb".freeze, "app/views/spree/shared/_shortrating.html.erb".freeze, "bin/rails".freeze, "config/locales/de-CH.yml".freeze, "config/locales/de.yml".freeze, "config/locales/en-GB.yml".freeze, "config/locales/en.yml".freeze, "config/locales/es.yml".freeze, "config/locales/fr.yml".freeze, "config/locales/km.yml".freeze, "config/locales/nl.yml".freeze, "config/locales/pl.yml".freeze, "config/locales/pt-BR.yml".freeze, "config/locales/pt.yml".freeze, "config/locales/ro.yml".freeze, "config/locales/ru.yml".freeze, "config/locales/sv.yml".freeze, "config/locales/tr.yml".freeze, "config/locales/uk.yml".freeze, "config/locales/zh-CN.yml".freeze, "config/locales/zh-TW.yml".freeze, "config/routes.rb".freeze, "db/migrate/20081020220724_create_reviews.rb".freeze, "db/migrate/20101222083309_create_feedback_reviews.rb".freeze, "db/migrate/20110406083603_add_rating_to_products.rb".freeze, "db/migrate/20110606150524_add_user_to_reviews.rb".freeze, "db/migrate/20110806093221_add_ip_address_to_reviews.rb".freeze, "db/migrate/20120110172331_namespace_tables.rb".freeze, "db/migrate/20120123141326_recalculate_ratings.rb".freeze, "db/migrate/20120712182514_add_locale_to_reviews.rb".freeze, "db/migrate/20120712182627_add_locale_to_feedback_reviews.rb".freeze, "db/migrate/20140703200946_add_show_identifier_to_reviews.rb".freeze, "db/migrate/20210728110635_change_product_id_and_user_id_type_for_spree_reviews.rb".freeze, "db/migrate/20210728110707_change_user_id_and_review_id_type_for_spree_feedback_reviews.rb".freeze, "db/sample/ratings.yml".freeze, "db/sample/reviews.yml".freeze, "gemfiles/spree_3_7.gemfile".freeze, "gemfiles/spree_4_1.gemfile".freeze, "gemfiles/spree_4_2.gemfile".freeze, "gemfiles/spree_master.gemfile".freeze, "lib/generators/spree_reviews/install/install_generator.rb".freeze, "lib/spree_reviews.rb".freeze, "lib/spree_reviews/engine.rb".freeze, "lib/spree_reviews/version.rb".freeze, "spree_reviews.gemspec".freeze, "vendor/assets/javascripts/jquery.rating.js".freeze]
  s.homepage = "https://github.com/spree-contrib/spree-reviews/".freeze
  s.licenses = ["BSD-3".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "Basic review and ratings facility for Spree".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<deface>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<spree_api>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_runtime_dependency(%q<spree_backend>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_runtime_dependency(%q<spree_core>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_runtime_dependency(%q<spree_extension>.freeze, [">= 0"])
    s.add_development_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<spree_dev_tools>.freeze, [">= 0"])
  else
    s.add_dependency(%q<deface>.freeze, ["~> 1.0"])
    s.add_dependency(%q<spree_api>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_dependency(%q<spree_backend>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_dependency(%q<spree_core>.freeze, [">= 3.2.0", "< 5.0"])
    s.add_dependency(%q<spree_extension>.freeze, [">= 0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<spree_dev_tools>.freeze, [">= 0"])
  end
end
