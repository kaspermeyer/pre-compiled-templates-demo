module PreCompilation
  class Railtie < Rails::Railtie
    initializer "action_view_component.compile_templates" do
      ActiveSupport.on_load(:after_initialize) do
        ActionView::Component::Base.descendants.each(&:compile) if config.eager_load
      end
    end
  end
end
