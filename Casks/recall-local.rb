cask "recall-local" do
  version "1.0.0"
  sha256 "449ee3589e391ce9bfc7528f345e9c85610b2dd282aca88d6f4faf8012c4b1e8  "

  # Update this to match your username and repo name exactly
  url "https://github.com/a1k7/Recall-Local/releases/download/v#{version}/RecallLocal.zip"
  name "Recall Local"
  desc "Local AI file organizer and chat powered by Llama 3"
  homepage "https://github.com/a1k7/Recall-Local"

  # This tells Homebrew to move the app to the Applications folder
  app "Recall Local.app"

  # This handles the quarantine/gatekeeper issue automatically for users!
  caveats do
    requires_rosetta
    <<~EOS
      Note: Since this app is not notarized, you may need to run:
        xattr -cr "/Applications/Recall Local.app"
    EOS
  end
end
