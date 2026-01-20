cask "voicescribe" do
  version "1.3.1"
  sha256 "4b38a5a11b8d1e208ea3305ab0ebb3c6d5eac5ac1969ac8b2b842b948cc1baa1"

  url "https://github.com/eddmann/VoiceScribe/releases/download/v#{version}/VoiceScribe-#{version}.zip"
  name "VoiceScribe"
  desc "Voice transcription with WhisperKit and OpenAI"
  homepage "https://github.com/eddmann/VoiceScribe"

  depends_on macos: ">= :sonoma"

  app "VoiceScribe.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.VoiceScribe.plist",
    "~/Library/Containers/com.eddmann.VoiceScribe",
    "~/Documents/huggingface/models/argmaxinc/whisperkit-coreml"
  ]
end
