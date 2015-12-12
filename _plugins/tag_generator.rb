module JekyllHHH
  class TagPage < ::Jekyll::Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, '_layouts'), 'tag_page.html')

      data["title"] = "##{ tag }"
      data["posts"] = site.tags[tag]

      Jekyll::Hooks.trigger :pages, :post_init, self
    end
  end

  class CategoryPageGenerator < ::Jekyll::Generator
    safe true

    def generate(site)
      dir = 'tags'
      site.tags.each_key do |tag|
        site.pages << TagPage.new(site, site.source, File.join(dir, tag), tag)
      end
    end
  end
end
