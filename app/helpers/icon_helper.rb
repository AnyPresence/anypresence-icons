module IconHelper
  def platform_icon(name, type='platform', size=56, options={})
    options[:class] ||= ''
    if options[:wide]
      options[:class] = "#{type}-icon-wide-#{size}-#{name} #{options[:class]}"
    else
      options[:class] = "#{type}-icon-#{size}-#{name} #{options[:class]}"
    end
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
end
