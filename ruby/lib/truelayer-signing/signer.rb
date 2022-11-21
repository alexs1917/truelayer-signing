module TrueLayerSigning
  class Signer < JwsBase
    def sign
      ensure_config_is_correct

      raise(Error, "body is missing") unless body

      # private_key = OpenSSL::PKey.read(File.read(private_key_filename))
      # jwt = JWT.encode(payload, private_key, TrueLayerSigning.config.algorithm, { kid: certificate_id })
      # parts = jwt.split(".")

      # "#{parts.first}..#{parts.last}"
    end
  end
end
