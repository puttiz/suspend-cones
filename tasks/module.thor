module Module
  class Create < Thor::Group
    include Thor::Actions

    # namespace "module:create"
    desc "Description:\n\n\tcones app generates a new module"

    argument :name
    class_option :directory, default: "default", aliases: ["-d"]
    class_option :extension, default: "php", aliases: ["-e"]
    class_option :prefix, default: "tshop-um", aliases: ["-p"]

    @require_arguments

    def filename
      [options[:prefix], name].join("-")
    end

    def self.source_root
      File.expand_path("../templates", File.dirname(__FILE__))
    end

    def setup_module
      path = "../content/#{options[:directory]}/modules/#{filename}"
      self.destination_root = File.expand_path(path, File.dirname(__FILE__))
      directory("module", destination_root)
    end

  end

end
