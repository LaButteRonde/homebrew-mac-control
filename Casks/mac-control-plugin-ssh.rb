cask "mac-control-plugin-ssh" do
  version "0.4.2"
  sha256 "2be0e888934e424dc3680e9c01fcf3b5514d731a6ec40430ea7f9d6b26e26258"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Un bouton par machine SSH dans la barre des menus, qui ouvre un terminal déjà connecté."
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
