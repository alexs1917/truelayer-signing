module TrueLayerSigning
  class Config
    attr_accessor :certificate_id
    attr_accessor :private_key

    # @return [TrueLayerSigning::Configuration]
    def self.setup
      new.tap do |instance|
        yield(instance) if block_given?
      end
    end

    # @return [TrueLayerSigning::Configuration]
    def initialize
      @algorithm = "ES512".freeze
      @certificate_id = ENV.fetch("TRUELAYER_SIGNING_CERTIFICATE_ID", nil).freeze
      @private_key = ENV.fetch("TRUELAYER_SIGNING_PRIVATE_KEY", nil).freeze
      @version = "2".freeze
    end
  end
end
