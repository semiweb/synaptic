module Synaptic
  module ActiveRecord
    module Extensions

      def self.included base
        base.extend( ClassMethods )
      end

      module ClassMethods

        def neuron options={}
          neurons[self.model_name] = Synaptic::Neuron.new( self, options )
        end

        def neurons
          @@neurons ||= {}
        end

        def synapsed?
          !!neurons[self.model_name]
        end
      end

    end
  end
end

ActiveRecord::Base.send(:include, Synaptic::ActiveRecord::Extensions)