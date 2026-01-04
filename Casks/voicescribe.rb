cask "voicescribe" do
  version "1.1.0"
  sha256 "95f83bc4fcbf8f8ad2e3f4761f6abf221c07dbcc6fb9814f629821f029242f2b"

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
