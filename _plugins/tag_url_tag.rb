module HQC
  module TagLinkFilter
    def tag_name(tag)
      "##{tag}"
    end

    def tag_url(tag)
      "/tags/#{tag}"
    end
  end
end

Liquid::Template.register_filter(HQC::TagLinkFilter)
