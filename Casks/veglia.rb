cask "veglia" do
  version "0.4"
  sha256 "1fd3b831d309a9afc93776b63895f28961b8673acd57832274a9c6461092309c"

  url "https://github.com/rroossaarroossaa/Veglia/releases/download/v#{version}/Veglia.zip"
  name "Veglia"
  desc "Menu bar candle that prevents sleep while a coding agent is working"
  homepage "https://github.com/rroossaarroossaa/Veglia"

  depends_on macos: :ventura

  app "Veglia.app"

  uninstall quit: "com.rosathings.veglia"

  zap trash: [
    "~/Library/Application Support/Veglia",
    "~/Library/Preferences/com.rosathings.veglia.plist",
  ]

  caveats <<~EOS
    Veglia is not notarized. Homebrew installs it without the quarantine flag, so it opens
    without the "unidentified developer" dialog.
  EOS
end
