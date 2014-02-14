module AnyPresence
  module Icons
    module IconHelper
      def platform_icon(name, type='platform', size=56, options={})
        options[:class] ||= ''
        options[:class] = "#{type}-icon-#{size}-#{name} #{options[:class]}"
        content_tag :span, '', options
      end

      def build_type_icon(name, size=56, options={})
        platform_icon name, 'build-type', size, options
      end

      def deployment_icon(name, size=56, options={})
        platform_icon name, 'deployment', size, options
      end

      def extension_icon(name, size=56, options={})
        platform_icon name, 'extension', size, options
      end

      def data_source_icon(name, size=56, options={})
        platform_icon name, 'data-source', size, options
      end

      def authentication_strategy_icon(name, size=56, options={})
        platform_icon name, 'authentication-strategy', size, options
      end

      def repository_icon(name, size=56, options={})
        platform_icon name, 'repository', size, options
      end

      def credential_icon(name, size=56, options={})
        platform_icon name, 'credential', size, options
      end
  
      def platform_boolean(f, field, options={})
        options[:icon_type] ||= 'build-type'
        options[:time_value] ||= 0
        options[:category] ||= 0
        options[:size] ||= 56
        options[:class] ||= ''
        options[:class] = "platform-boolean pull-left text-center #{options[:class]}"
        content_tag :label, options do
          icon = platform_icon options[:icon], options[:icon_type], options[:size]
          label = content_tag :label, options[:label]
          field = f.input field, label: false, wrapper: :naked_checkbox, input_html: {data: {time_value: options[:time_value], icon: options[:icon], icon_type: options[:icon_type], label: options[:label], category: options[:category]}}
          "#{icon} <div>#{label}</div> #{field}".html_safe
        end
      end
    end
  end
end
