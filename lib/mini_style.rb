require "mini_style/version"

module MiniStyle
  module Helpers
    def style(default=nil, options={})
      if default.is_a?(Hash)
        options = default
      elsif default
        options[default] = true
      end
      options.select { |k,v| v }.keys.join(' ')
    end
  end
end

require 'mini_style/railtie' if defined?(::Rails)
