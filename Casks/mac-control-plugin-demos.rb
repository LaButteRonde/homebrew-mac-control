cask "mac-control-plugin-demos" do
  version "1.2.0"
  sha256 "ce905b507ef5bf55cf9512ffdb76ba56562d023cb2ff11b69674fb74e06bd71d"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/demos-#{version}/demos-#{version}.zip"
  name "Démos"
  desc "Fabriquer des vidéos de démo avec Claude ou Codex, retrouvées par projet et branche"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: ["ffmpeg", "uv"]

  artifact "demos.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/demos.mcplugin"
end
