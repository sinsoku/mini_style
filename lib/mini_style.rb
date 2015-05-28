require "mini_style/version"

module MiniStyle
  module Helpers
    def style(default=nil, options={})
      if default.is_a?(Hash)
        options = default
      elsif default
        options[default] = true
      end

      styles = options.select { |k,v| v }.keys
      styles.size > 0 ? styles.join(' ') : nil
    end
  end
end

require 'mini_style/railtie' if defined?(::Rails)
