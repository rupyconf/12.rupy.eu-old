# encoding: utf-8

module HomeHelper

  # TODO: refactoring needed
  def speaker_name(name)
    name.scan(/(Dr \p{Word}+|\p{Word}+) (.*)/) do |first_name, last_name| 
      name = "<span>#{ first_name }</span> <span>#{ last_name }</span>"
    end

    name.html_safe
  end

  def sponsor_logo(sponsor)
    sponsor.name.downcase.gsub(' ', '')
  end

  def sponsor_headline(sponsors, sponsor_type)
    "#{ sponsor_type.description.capitalize } #{ t(:sponsor).pluralize(sponsors[sponsor_type].count) }"
  end

  def link_to_speaker(site, link, *options)
    prefix_url = { github: 'https://github.com/', twitter: 'https://twitter.com/' }

    link_to site.capitalize, "#{ prefix_url[site.to_sym] }#{ link }"
  end

  def social_navbar(speaker, *options)
    networks = %w{ github twitter website }

    networks = networks.each_with_object({}) do |network, speaker_networks|
      if reference = speaker.send(network)
        speaker_networks.merge!({ network.to_sym => reference }) if reference.present?
      end
    end

    return if networks.blank?

    content_tag :ul, class: 'nav pull-left' do
      networks.each do |site, reference|
        concat(content_tag(:li, class: "icon small #{ site }-dark") do
          link_to_speaker(site, reference)
        end)
      end
    end

  end

end