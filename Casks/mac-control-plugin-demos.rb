cask "mac-control-plugin-demos" do
  version "1.2.1"
  sha256 "ed76358f499b28d44a25c8aee2708a69c803464ec5806aa63b0bcd3f3a69a0ea"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/demos-#{version}/demos-#{version}.zip"
  name "Démos"
  desc "Fabriquer des vidéos de démo avec Claude ou Codex, retrouvées par projet et branche"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on formula: ["ffmpeg", "uv"]

  artifact "demos.mcplugin",
           target: "#{Dir.home}/Library/Application Support/mac-control/Plugins/demos.mcplugin"
end
