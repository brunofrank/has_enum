module HasEnum

  autoload :ClassMethods,            'has_enum/class_methods'

  def self.included(base)
    base.extend ClassMethods
  end

end

class ActiveRecord::Base
  include HasEnum
end

begin
  require 'formtastic'
  require 'has_enum/formtastic'
rescue LoadError
end
