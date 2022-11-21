module TrueLayerSigning
  class Verifier < JwsBase
  end
  # Validates a JSON web signature with detached content.
  #
  # @param  payload               [Hash]              required
  # @param  signature             [String]            required
  # @param  client                [TrueLayer::Client] optional
  # @return                       [Array]
  # def validate_jws(payload, signature, client = nil)
  #   raise ArgumentError, "payload missing" if !payload.is_a?(Hash) || payload.empty?
  #   raise ArgumentError, "signature missing" if !signature.is_a?(String) || signature.empty?

  #   jws_parts = signature.split(".")
  #   jws_header_json = Base64.urlsafe_decode64(jws_parts.first)
  #   jws_header = JSON.parse(jws_header_json, symbolize_names: true)
  #   base_url = client ? client.payments_base : TrueLayer.payments_base
  #   jwks_uri = base_url + product_module::JWKS_PATH

  #   raise StandardError, "signature invalid – possible environment mismatch" \
  #     if jws_header[:jku] != jwks_uri

  #   jwks_json = HTTP.get(jwks_uri).body.to_s
  #   jwks_hash = JSON.parse(jwks_json, symbolize_names: true)
  #   jwk = jwks_hash[:keys].find { |key| key[:kid] == jws_header[:kid] }

  #   raise StandardError, "signature invalid – set does not include given kid value" unless jwk

  #   payload_json = payload.to_json
  #   payload_64 = Base64.urlsafe_encode64(payload_json, padding: false)
  #   full_signature = [jws_parts[0], payload_64, jws_parts[2]].join(".")
  #   public_key = JWT::JWK::RSA.import(jwk).public_key

  #   JWT.decode(full_signature, public_key, true, { algorithm: product_module::SIGNING_ALGORITHM })
  # end
end
