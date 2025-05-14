# Admin Commands

This page lists the available administrative commands for Red Zone RP staff members. Each command is explained with its syntax, required permission level, and examples.

> **Note:** This document is for staff reference only. Unauthorized use of these commands by non-staff players is strictly prohibited and will result in a permanent ban.

## Command Permission Levels

Commands are restricted by staff rank:

1. **Owner/Head Admin** - Full access to all commands
2. **Senior Admin** - Most administrative commands
3. **Admin** - Limited administrative commands
4. **Senior Moderator** - Basic player management and moderation
5. **Moderator** - Essential moderation tools
6. **Junior Moderator** - Minimal commands for observation and basic assistance

## General Commands

### Help Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/staffhelp` | Shows all available staff commands | Junior Moderator+ | `/staffhelp` |
| `/checkperm [command]` | Checks if you have permission to use a command | Junior Moderator+ | `/checkperm ban` |

### Staff Utilities

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/staffchat [message]` | Sends a message visible only to staff | Junior Moderator+ | `/staffchat Need help with a situation` |
| `/announce [message]` | Sends a server-wide announcement | Moderator+ | `/announce Server restart in 10 minutes` |
| `/staffduty` | Toggles staff duty mode | Junior Moderator+ | `/staffduty` |
| `/report [id]` | Teleports to a player who submitted a report | Moderator+ | `/report 15` |
| `/reportlist` | Shows all active reports | Junior Moderator+ | `/reportlist` |
| `/closeticket [id]` | Closes an active report ticket | Moderator+ | `/closeticket 43` |

## Player Management

### Basic Player Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/getid [partial_name]` | Gets player ID from partial name | Junior Moderator+ | `/getid John` |
| `/coords` | Shows your current coordinates | Junior Moderator+ | `/coords` |
| `/goto [id]` | Teleports to specified player | Junior Moderator+ | `/goto 42` |
| `/bring [id]` | Teleports player to your location | Moderator+ | `/bring 42` |
| `/freeze [id]` | Freezes a player in place | Moderator+ | `/freeze 42` |
| `/unfreeze [id]` | Unfreezes a player | Moderator+ | `/unfreeze 42` |
| `/invisible` | Toggles staff invisibility | Senior Moderator+ | `/invisible` |
| `/heal [id]` | Heals a player to full health | Moderator+ | `/heal 42` |
| `/revive [id]` | Revives a dead player | Moderator+ | `/revive 42` |

### Moderation Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/warn [id] [reason]` | Issues a warning to a player | Moderator+ | `/warn 42 Meta-gaming in city center` |
| `/kick [id] [reason]` | Kicks a player from the server | Moderator+ | `/kick 42 Repeated rule violations` |
| `/tempban [id] [duration] [reason]` | Temporarily bans a player | Senior Moderator+ | `/tempban 42 3d Exploiting game mechanics` |
| `/ban [id] [reason]` | Permanently bans a player | Admin+ | `/ban 42 Using cheats` |
| `/unban [id/name]` | Removes a player's ban | Senior Admin+ | `/unban John_Doe` |
| `/checkban [id/name]` | Checks a player's ban status | Moderator+ | `/checkban 42` |
| `/warnhistory [id/name]` | Shows a player's warning history | Moderator+ | `/warnhistory John_Doe` |
| `/mute [id] [duration] [reason]` | Mutes a player from text/voice chat | Moderator+ | `/mute 42 30m Spam in chat` |
| `/unmute [id]` | Unmutes a player | Moderator+ | `/unmute 42` |

### Player Information

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/check [id]` | Gets basic information about a player | Junior Moderator+ | `/check 42` |
| `/playtime [id]` | Shows a player's total playtime | Junior Moderator+ | `/playtime 42` |
| `/money [id]` | Shows a player's current money | Admin+ | `/money 42` |
| `/inventory [id]` | Shows a player's inventory contents | Senior Moderator+ | `/inventory 42` |
| `/vehicles [id]` | Lists all vehicles owned by a player | Moderator+ | `/vehicles 42` |
| `/houses [id]` | Lists all properties owned by a player | Moderator+ | `/houses 42` |
| `/iplookup [id]` | Shows a player's IP address (anonymized) | Senior Admin+ | `/iplookup 42` |
| `/hwid [id]` | Shows a player's hardware ID (anonymized) | Senior Admin+ | `/hwid 42` |

## Vehicle Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/car [model]` | Spawns a vehicle | Admin+ | `/car adder` |
| `/repair [id]` | Repairs the nearest vehicle | Moderator+ | `/repair` |
| `/dv` | Deletes the nearest vehicle | Moderator+ | `/dv` |
| `/fixveh [plate/id]` | Repairs a specific vehicle | Moderator+ | `/fixveh ABC123` |
| `/tpv [id]` | Teleports to a specific vehicle | Senior Moderator+ | `/tpv 421` |
| `/plate [text]` | Changes the plate of the nearest vehicle | Admin+ | `/plate STAFF` |

## World Management

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/weather [type]` | Changes server weather | Admin+ | `/weather storm` |
| `/time [hour]` | Changes server time | Admin+ | `/time 22` |
| `/tp [x] [y] [z]` | Teleports to coordinates | Moderator+ | `/tp 100 200 50` |
| `/tpm [marker]` | Teleports to map marker | Moderator+ | `/tpm` |
| `/setloc [name]` | Saves current location | Senior Moderator+ | `/setloc PD_Front` |
| `/gopos [name]` | Teleports to saved location | Senior Moderator+ | `/gopos PD_Front` |
| `/cleararea [radius]` | Clears all vehicles in radius | Admin+ | `/cleararea 50` |
| `/entityinfo` | Shows info about entity you're looking at | Junior Moderator+ | `/entityinfo` |
| `/object [model]` | Places an object at your location | Senior Admin+ | `/object prop_bin_04a` |
| `/delobj [range]` | Deletes objects in range | Senior Admin+ | `/delobj 5` |

## Server Management

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/playerlist` | Shows all online players | Junior Moderator+ | `/playerlist` |
| `/resources` | Lists all running server resources | Senior Admin+ | `/resources` |
| `/restartres [name]` | Restarts a specific resource | Head Admin+ | `/restartres jobs` |
| `/setgroup [id] [group]` | Sets a player's permission group | Senior Admin+ | `/setgroup 42 moderator` |
| `/console [command]` | Executes a server console command | Head Admin+ | `/console status` |
| `/uptime` | Shows server uptime | Junior Moderator+ | `/uptime` |
| `/saveall` | Forces database save for all players | Admin+ | `/saveall` |
| `/announcement [message]` | Shows announcement with UI | Senior Moderator+ | `/announcement Server restart in 5 minutes` |

## Event Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/event start [name]` | Starts a predefined event | Senior Moderator+ | `/event start race1` |
| `/event end` | Ends the current event | Senior Moderator+ | `/event end` |
| `/event tp [id]` | Teleports player to event | Senior Moderator+ | `/event tp 42` |
| `/event list` | Lists all available events | Junior Moderator+ | `/event list` |
| `/event broadcast [msg]` | Sends message to event participants | Senior Moderator+ | `/event broadcast Race starting in 1 minute` |

## Economy Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/addmoney [id] [amount] [type]` | Adds money to player | Senior Admin+ | `/addmoney 42 5000 bank` |
| `/removemoney [id] [amount] [type]` | Removes money from player | Senior Admin+ | `/removemoney 42 5000 cash` |
| `/setmoney [id] [amount] [type]` | Sets player's money to amount | Head Admin+ | `/setmoney 42 10000 bank` |
| `/economy status` | Shows server economy statistics | Admin+ | `/economy status` |

## Special Commands

| Command | Description | Permission Level | Example |
|---------|-------------|------------------|---------|
| `/staffmeeting` | Teleports all on-duty staff to meeting room | Senior Admin+ | `/staffmeeting` |
| `/spectate [id]` | Spectates a player | Senior Moderator+ | `/spectate 42` |
| `/noclip` | Toggles no-clip mode for flying | Moderator+ | `/noclip` |
| `/godmode` | Toggles invincibility | Admin+ | `/godmode` |
| `/record [id]` | Starts recording a player's actions | Senior Moderator+ | `/record 42` |
| `/screenshot [id]` | Takes a screenshot of player's screen | Senior Moderator+ | `/screenshot 42` |

---

## Command Usage Guidelines

1. **Minimalism:** Only use commands when necessary for administrative purposes
2. **Documentation:** Log all significant administrative actions
3. **Transparency:** Inform players when taking administrative action
4. **Consistency:** Follow established procedures for similar situations
5. **Privacy:** Respect player privacy when using information commands

For more information on when and how to use these commands, refer to the [Discipline System](discipline-system.md) document.