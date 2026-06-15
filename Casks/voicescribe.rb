cask "voicescribe" do
  version "2.0.0"
  sha256 "cc748b2947e1db2ed7fb85165b2bc5df6aa52f63a0906a10d32d2c956cc3601b"

  url "https://github.com/eddmann/VoiceScribe/releases/download/v#{version}/VoiceScribe-#{version}.zip"
  name "VoiceScribe"
  desc "Voice transcription with WhisperKit and OpenAI"
  homepage "https://github.com/eddmann/VoiceScribe"

  depends_on macos: :sonoma

  app "VoiceScribe.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.VoiceScribe.plist",
    "~/Library/Containers/com.eddmann.VoiceScribe",
    "~/Documents/huggingface/models/argmaxinc/whisperkit-coreml"
  ]
end
