module Decorable
  extend ActiveSupport::Concern

  # If method is missing, check the decorator if it exists
  def method_missing(method, *args, &block)
    self.decorate.send(method, *args, &block)
  end
end
