module MiniStyle
  class Railtie < ::Rails::Railtie
    initializer 'mini_style' do |_app|
      ActionView::Base.send :include, MiniStyle::Helpers
    end
  end
end
