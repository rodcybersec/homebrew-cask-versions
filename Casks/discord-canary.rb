cask 'discord-canary' do
  version '0.0.220'
  sha256 'cc090bda2f87ab5159cd7c3c5c552e3cd24fb5de56394fd2bb2695064fd778fe'

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
  appcast 'https://discordapp.com/api/canary/updates?platform=osx'
  name 'Discord Canary'
  homepage 'https://discordapp.com/'

  auto_updates true

  app 'Discord Canary.app'

  zap trash: [
               '~/Library/Application Support/discordcanary',
               '~/Library/Caches/com.hnc.DiscordCanary',
               '~/Library/Caches/com.hnc.DiscordCanary.ShipIt',
               '~/Library/Cookies/com.hnc.DiscordCanary.binarycookies',
               '~/Library/Preferences/com.hnc.DiscordCanary.helper.plist',
               '~/Library/Preferences/com.hnc.DiscordCanary.plist',
               '~/Library/Saved Application State/com.hnc.DiscordCanary.savedState',
             ]
end
