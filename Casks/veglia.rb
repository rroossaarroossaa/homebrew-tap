cask "veglia" do
  version "0.3"
  sha256 "6675f4c9e72598704125994cd5ef6f2af023cff8402404c9b06cb7241e9ea141"

  url "https://github.com/rroossaarroossaa/veglia/releases/download/v#{version}/Veglia.zip"
  name "Veglia"
  desc "Menu bar candle that prevents sleep while a coding agent is working"
  homepage "https://github.com/rroossaarroossaa/veglia"

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
