cask "mac-control-plugin-demos" do
  version "1.2.2"
  sha256 "453b076a2f5d177f00c2a02bfb4bba699fcc04cf818945dbe36807b793b44020"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/demos-#{version}/demos-#{version}.zip"
  name "Démos"
  desc "Fabriquer des vidéos de démo avec Claude ou Codex, retrouvées par projet et branche"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: ["ffmpeg", "uv"]

  artifact "demos.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/demos.mcplugin"
end
