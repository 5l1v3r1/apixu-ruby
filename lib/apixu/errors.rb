module Apixu::Errors
  API_KEY_NOT_PROVIDED = 1002
  QUERY_PARAMETER_NOT_PROVIDED = 1003
  API_REQUEST_URL_INVALID = 1005
  NO_LOCATION_FOUND_FOR_QUERY = 1006
  API_KEY_INVALID = 2006
  API_KEY_MONTHLY_CALLS_QUOTA_EXCEEDED = 2007
  API_KEY_DISABLED = 2008
  INTERNAL_APPLICATION_ERROR = 9999

  class InvalidKey < StandardError; end

  class Request < StandardError
    attr_accessor :code
    attr_accessor :message

    def initialize(code, message)
      super "#{code}: #{message}"
      @code = code
      @message = message
    end
  end
end
