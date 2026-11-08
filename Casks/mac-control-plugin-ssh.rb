cask "mac-control-plugin-ssh" do
  version "0.3.0"
  sha256 "5abf9371d7a3f50cea724f29e01a279e095a9936c1d6d58563b044ba1658f3f8"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Ouvrir un terminal connecté en SSH à ses machines, d'un clic dans la barre des menus"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
