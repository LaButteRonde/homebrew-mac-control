cask "mac-control-plugin-ssh" do
  version "0.4.1"
  sha256 "6bf40f7e816078f5c6aa6858201714299ac86d1c5281d9cdc3901991860f09cf"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Ouvrir un terminal connecté en SSH à ses machines, d'un clic dans la barre des menus"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
