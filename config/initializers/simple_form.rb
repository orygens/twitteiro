SimpleForm.setup do |config|
  # config.components = [ :label_input, :hint, :error ]

  # Default tag used on hints.
  # config.hint_tag = :span

  # Default tag used on errors.
  # config.error_tag = :span

  # Method used to tidy up errors.
  # config.error_method = :first

  # Default tag used for error notification helper.
  # config.error_notification_tag = :p

  # You can wrap all inputs in a pre-defined tag.
  # config.wrapper_tag = :div

  config.wrapper_error_class = :field_with_errors

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required| "#{required} #{label}" }

  #config.required_by_default = true

  # Series of attemps to detect a default label method for collection.
  # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]

  # Series of attemps to detect a default value method for collection.
  # config.collection_value_methods = [ :id, :to_s ]

  config.default_input_size = 50
end
