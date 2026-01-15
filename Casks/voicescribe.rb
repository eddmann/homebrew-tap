cask "voicescribe" do
  version "1.3.0"
  sha256 "f5a65fda22eb14830dfc2e137aac490ad82ca09ce1f15a69992954f1f20cf33d"

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
