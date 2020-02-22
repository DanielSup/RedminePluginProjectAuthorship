# frozen_string_literal: true

require 'authorship_hook_listener'
require 'projects_controller_patch'

Redmine::Plugin.register :my_plugin do
  name 'Project authorshihp'
  author 'Daniel Šup'
  description 'This is a plugin for Redmine which add the author field to the project form (or project settings form).'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'https://github.com/supdanie'

  RedmineApp::Application.configure do
    config.after_initialize do
      ProjectsController.include ProjectsControllerPatch
    end
  end
end
