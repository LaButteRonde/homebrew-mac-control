cask "mac-control-plugin-demos" do
  version "1.0.0"
  sha256 "c05f76155b474f36c27fde9669a5f7151213ae6cdceaf373103cfa2591e6eae4"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/demos-#{version}/demos-#{version}.zip"
  name "Démos"
  desc "Fabriquer des vidéos de démo avec Claude ou Codex, retrouvées par projet et branche"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  artifact "demos.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/demos.mcplugin"
end
