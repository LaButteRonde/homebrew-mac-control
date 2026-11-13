cask "mac-control-plugin-ssh" do
  version "0.5.0"
  sha256 "6aecb25c7745b15a89214bea30f011766548d376c43a86c4d3643d60465e6220"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Un bouton par machine SSH dans la barre des menus, qui ouvre un terminal déjà connecté."
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
