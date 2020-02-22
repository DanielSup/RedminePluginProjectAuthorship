# frozen_string_literal: true

module ProjectsControllerPatch
  def self.included(base)
    base.class_eval do
      after_action :save_author, :only => [:create, :update]

      def save_author
        @project.user_id = params[:project][:user_id]
        @project.save
      end
    end
  end
end
