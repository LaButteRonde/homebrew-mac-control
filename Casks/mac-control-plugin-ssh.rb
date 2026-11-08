cask "mac-control-plugin-ssh" do
  version "0.4.0"
  sha256 "5c3561f67d2f6bf63914fa61e08182e88e54c2d97dff70bccf04147f87eee22e"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Ouvrir un terminal connecté en SSH à ses machines, d'un clic dans la barre des menus"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
