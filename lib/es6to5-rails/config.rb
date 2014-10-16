module Es6to5
  class Config
    class << self
      def bin_path
        @path
      end

      def bin_path= path
        @path = path
      end
    end
  end
end