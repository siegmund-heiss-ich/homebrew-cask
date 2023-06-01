cask "ryujinx" do
  version "1.1.854"
  sha256 "69293845d7c702773e78eda2650f9a94dc73a669e4db19e960fcfa1278d4272b"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/"
  name "Ryujinx"
  desc "Is an open-source Nintendo Switch emulator, created by gdkchan, written in C#"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState/window_1.data",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState/windows.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState/data.data",
  ]
end
