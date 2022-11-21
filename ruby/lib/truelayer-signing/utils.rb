module TrueLayerSigning
  class JwsHeader
    attr_reader :alg, :kid, :tl_version, :tl_headers, :jku

    def initialize(args = {})
      @alg = Config.algorithm
      @kid = Config.certificate_id
      @tl_version = Config.version
    end
  end

  class JwsBase
    attr_reader :method, :path, :headers, :body

    def initialize(args = {})
      @method = "POST"
      @headers = {}
    end

    def set_method(method)
      @method = method
    end

    def set_path(path)
      @path = path
    end

    def add_header(name, value)
      @headers[name] = value
    end

    def add_headers(headers)
      headers.each do |name, value|
        @headers[name.to_s] = value
      end
    end

    def set_body(body)
      @body = body
    end

    private def ensure_config_is_correct
      raise(Error, "certificate_id is missing") \
        if TrueLayerSigning.config.certificate_id.nil? ||
          TrueLayerSigning.config.certificate_id.empty?
      raise(Error, "private_key is missing") \
        if TrueLayerSigning.config.private_key.nil? ||
          TrueLayerSigning.config.private_key.empty?
    end
  end
end
