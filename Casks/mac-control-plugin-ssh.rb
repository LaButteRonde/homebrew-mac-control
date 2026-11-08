cask "mac-control-plugin-ssh" do
  version "0.2.0"
  sha256 "87e9e3da5f1f5bb418c10a6b591e300b6de4046b1289bdade0a1d71679366259"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/ssh-#{version}/ssh-#{version}.zip"
  name "SSH"
  desc "Ouvrir un terminal connecté en SSH à ses machines, d'un clic dans la barre des menus"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: "jq"

  artifact "ssh.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/ssh.mcplugin"
end
