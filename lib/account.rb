module LloydsTSB
  class Account
    attr_accessor :name, :balance, :limit, :transactions, :identifier, :type
    
    def initialize(hash = {})
      hash.each { |key,val| send("#{key}=", val) if respond_to?("#{key}=") }
    end
    
  end
end