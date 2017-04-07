class FutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless !value.nil? && value > DateTime.now
      record.errors[attribute] << (options[:message] || "must be a date in a future")
    end
  end
end