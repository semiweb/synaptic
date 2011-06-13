module Synaptic
  class Neuron
    def initialize model, options
      @model = model

      @white_list = options[:only] || []
      @black_list = options[:except] || []
    end

    def synapses
      @synapses ||= begin
        synapses = @model.reflect_on_all_associations
        synapses.select!{ |x| @white_list.include?( x.name ) } unless @white_list.empty?
        synapses.reject!{ |x| @black_list.include?( x.name ) } unless @black_list.empty?
        synapses
      end
    end
  end
end