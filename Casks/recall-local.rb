cask "recall-local" do
  version "1.0.0"
  sha256 "449ee3589e391ce9bfc7528f345e9c85610b2dd282aca88d6f4faf8012c4b1e8"

  url "https://github.com/a1k7/Corporate-Brain/releases/download/v1.0/SmartSortLocal.zip"
  name "Recall Local"
  desc "Local AI file organizer and chat powered by Llama 3"
  homepage "https://github.com/a1k7/Recall-Local"

  app "Recall Local.app"

  caveats do
    requires_rosetta
    <<~EOS
      Note: Since this app is not notarized, you may need to run:
        xattr -cr "/Applications/Recall Local.app"
    EOS
  end
end
