module MiniStyle
  class Railtie < ::Rails::Railtie
    initializer 'mini_style' do |app|
      ActionView::Base.send :include, MiniStyle::Helpers
    end
  end
end
