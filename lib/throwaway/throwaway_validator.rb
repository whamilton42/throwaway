require "throwaway/version"

class ThrowawayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    result = Throwaway.is_throwaway?(value)

    record.errors[attribute] << (options[:message] || "is not from a disposable email provider.") if options[:with].nil? and !result
    record.errors[attribute] << (options[:message] || "is from a disposable email provider.") if !options[:with].nil? and result
  end
end
