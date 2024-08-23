class InstallNeighborVector < ActiveRecord::Migration[7.1]
  def change
    enable_extension "vector" unless extension_enabled?("vector")
    # enable_extension "extensions.vector" unless extension_enabled?("vector")
  end
end
