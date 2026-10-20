cask "mac-control" do
  version "1.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/LaButteRonde/homebrew-mac-control/releases/download/v#{version}/MacControl-darwin-arm64-#{version}.zip"
  name "Mac Control"
  desc "Menu bar host for plugins that speak JSON-RPC"
  homepage "https://github.com/LaButteRonde/homebrew-mac-control"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Mac Control.app"

  # La régie arrête ses plugins en quittant : elle est quittée proprement avant le remplacement (TERM en filet),
  # puis relancée par le postflight.
  uninstall quit:   "fr.yayadev.mac-control",
            signal: ["TERM", "fr.yayadev.mac-control"]

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Mac Control.app"],
      sudo: false
    system_command "/usr/bin/open",
      args: ["-a", "#{appdir}/Mac Control.app"],
      sudo: false
  end

  zap trash: [
    "~/Library/Application Support/mac-control",
    "~/Library/Preferences/fr.yayadev.mac-control.plist",
  ]
end
