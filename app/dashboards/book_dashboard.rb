require "administrate/base_dashboard"

class BookDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    category: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    author: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    book_img:  Field::Image,
    book_img_content_type: Field::String,
    book_img_file_size: Field::Number,
    book_img_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :category,
    :id,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :category,
    :id,
    :title,
    :description,
    :author,
    :created_at,
    :updated_at,
    :book_img,
    :book_img_content_type,
    :book_img_file_size,
    :book_img_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :title,
    :description,
    :author,
    :book_img,

  ].freeze

  # Overwrite this method to customize how books are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(book)
  #   "Book ##{book.id}"
  # end
end
