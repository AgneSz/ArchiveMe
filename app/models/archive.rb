class Archive < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
    pg_search_scope :search_by_title_and_category,
    against: [ :title, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `hist` will return something!
    }
end
