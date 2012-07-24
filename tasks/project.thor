module Project
  class Create < Thor::Group
    include Thor::Actions

    # namespace "module:create"
    desc "Description:\n\n\tcones app generates a new project"

    argument :name

    @require_arguments

    def self.source_root
      File.expand_path("../templates", File.dirname(__FILE__))
    end

    def setup_project
      path = "../content/#{name}"
      self.destination_root = File.expand_path(path, File.dirname(__FILE__))
      directory("project", destination_root)
    end

  end
end