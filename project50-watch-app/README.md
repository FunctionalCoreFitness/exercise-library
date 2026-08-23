# Project 50 — Apple Watch Viewer

A tiny personal app: lists the "Project 50" ultra-marathon training episodes
(Coach Omar's 100-mile ultra prep series) on your Apple Watch. Tapping an
episode hands off to your iPhone to play it on YouTube — watchOS itself
can't play YouTube videos.

This is source code only. You'll assemble it into a real Xcode project on
your Mac (Xcode can't be scripted from here). It takes about 10 minutes.

## 1. Install Xcode (free)

Open the **Mac App Store** → search **Xcode** → Install. (Multi-GB download,
give it time.)

## 2. Create the project

1. Open Xcode → **Create New Project**.
2. Choose the **watchOS** tab → **App** → Next.
3. Product Name: `Project50`
4. Make sure **"Include Companion iOS App"** is checked (this creates both
   the Watch target and the required iPhone target together).
5. Interface: **SwiftUI**. Language: **Swift**.
6. Save it anywhere on your Mac.

Xcode will generate two targets/folders: one for the iOS app, one for the
Watch app (name may vary slightly, e.g. `Project50 Watch App`).

## 3. Drop in the code

In this folder you have three groups of files:

- `Shared/Project50Data.swift` — the episode list (add new weeks here later).
- `WatchApp/*.swift` — the watch screens.
- `iOSApp/*.swift` — the iPhone companion screen.

In Xcode:

1. Drag `Shared/Project50Data.swift` into the project navigator. When
   prompted for **Target Membership**, check **both** the iOS app target
   and the Watch app target (this file is used by both).
2. Drag the two files from `WatchApp/` into the **Watch App** group/target
   only, **replacing** the auto-generated `ContentView.swift` and app entry
   file Xcode created for the watch target (delete the generated ones, or
   just overwrite their contents with these).
3. Drag `iOSApp/ContentView.swift` into the **iOS app** target, replacing
   its auto-generated `ContentView.swift`. Leave Xcode's own iOS app entry
   file (`@main` struct) as-is — it already does the same job as
   `Project50App.swift` here, so you don't need to add that one; just make
   sure its `ContentView()` matches this one.

## 4. Sign it with your free Apple ID (no paid account needed)

1. Xcode menu → **Settings → Accounts** → add your Apple ID if it's not
   there.
2. Select the project in the navigator → for **both** targets (iOS app and
   Watch app) → **Signing & Capabilities** tab:
   - Check **Automatically manage signing**.
   - Set **Team** to your personal name (shows as "(Personal Team)").
3. If you get a bundle ID conflict, change it slightly, e.g.
   `com.yourname.project50`, on both targets (they must share the same
   prefix but the watch target's ID must be the iOS one + `.watchkitapp`
   suffix — Xcode usually handles this automatically when generated
   together).

## 5. Install on your iPhone + Watch

1. Plug your iPhone into your Mac (or use wireless debugging).
2. Make sure your Apple Watch is paired to that iPhone as usual.
3. In Xcode's scheme/device picker, select your iPhone.
4. Press **Run (▶)**. Xcode installs the iOS app on your phone, and because
   it bundles a Watch app, watchOS installs the companion automatically
   onto your paired watch within a minute or two (check the Watch app on
   your iPhone → My Watch → scroll to see install progress, or it may
   already just appear on the watch).

**Note:** with a free (non-paid) Apple ID, the app is only valid for **7
days** before it stops launching — just reconnect and hit Run again in
Xcode to refresh it. A $99/year Apple Developer account removes that limit.

## Adding new weeks later

Edit `Shared/Project50Data.swift` and append a new `Project50Episode(...)`
entry with the new week's title, subtitle, and YouTube video ID. Rebuild
and reinstall from Xcode.
