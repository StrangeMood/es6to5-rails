module Es6to5
  class Template < ::Tilt::Template
    self.default_mime_type = 'application/javascript'

    def prepare
    end

    def evaluate(scope, locals, &block)
      output = `#{Es6to5::Config.bin_path || '/usr/local/bin/6to5'} #{scope.pathname}`

      %{(function(exports){\n#{output}\n})(exports || {});}
    end
  end
end