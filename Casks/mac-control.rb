cask "mac-control" do
  version "1.3.1"
  sha256 "b7fbc832150bd2dd6d8d1b877329fc32f2aa833a87dc852eee680a5459fea2f9"

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
