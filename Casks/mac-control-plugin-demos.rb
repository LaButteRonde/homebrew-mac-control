cask "mac-control-plugin-demos" do
  version "1.1.0"
  sha256 "91d866a1eba70b8b018c8e02ac6a5fbcc17c06cad468dbb6cff3de2126413bef"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/demos-#{version}/demos-#{version}.zip"
  name "Démos"
  desc "Fabriquer des vidéos de démo avec Claude ou Codex, retrouvées par projet et branche"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  artifact "demos.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/demos.mcplugin"
end
