class Product < ApplicationRecord
    has_many :line_items

    before_destroy :ensure_not_referenced_by_any_line_item

    validates :title, :description, :image_url, presence: true

    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    validates :title, uniqueness: true

    validates :title, length: { minimum: 10, message: "en az on karakter olmalı!" }

    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'dosya türü gif, jpg ya da png olmalı.'
    }

    private

    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, "line items present")
            throw :abort
        end
    end
end
