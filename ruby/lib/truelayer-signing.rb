require "base64"
require "forwardable"
require "jwt"

require "truelayer-signing/config"
require "truelayer-signing/errors"
require "truelayer-signing/utils"
require "truelayer-signing/signer"
require "truelayer-signing/verifier"

module TrueLayerSigning
  @config = Config.setup

  class << self
    extend Forwardable

    attr_reader :config

    def_delegators :@config, :certificate_id, :certificate_id=
    def_delegators :@config, :private_key, :private_key=

    def sign_with_pem
      Signer.new
    end
  end
end
