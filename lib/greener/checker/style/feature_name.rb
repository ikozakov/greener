require "greener/checker/base"

module Greener
  module Checker
    module Style
      # Ensure .feature filename matches feature name in the Gherkin
      # e.g. filename_of_feature.feature => "Feature: filename of feature"
      # TODO: add config option for toggling flexible capitalization
      class FeatureName < Base
        MSG = "feature title does not match file name"

        # Returns nil if no violation, or if there is one:
        # { line: 1, column: 1, text_of_line: "Feature: thing", message: "feature title does not match file name" }
        def run
          return unless @config["Enabled"]

          filename_without_extension = File.basename(@path, ".*")
          return if feature[:name].downcase.gsub(" ", "_") == filename_without_extension

          log_violation(feature[:location][:line], feature[:location][:column])
        end
      end
    end
  end
end