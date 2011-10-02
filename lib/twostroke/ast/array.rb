module Twostroke::AST
  class Array < Base
    attr_accessor :items
    
    def initialize(*args)
      @items = []
      super *args
    end
    
    def collapse
      new items: items.map(&:collapse)
    end
  end
end