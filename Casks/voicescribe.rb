cask "voicescribe" do
  version "1.0.1"
  sha256 "38a086d9e00655c04852d3b4a6b43e799e60a1f5493c1b629f8fc14b4e532bc1"

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
