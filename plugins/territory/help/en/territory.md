---
toc: ~admin~ Building
summary: Updating territories for faction ownership.
---
# Territory

The current IC faction ownership of an area shows up in room descriptions, but you can see the territory breakdown across the grid using the territory command.

1. Headquarters - 1 per faction
2. Faction Territory
3. Conflicted - no one faction has ownership over like 75%
4. Unclaimed - no one has claimed this yet
5. Neutral - this room specifically claims neutrality and cant be affected by the system without admin doing things

`territory` - Shows the current percentile breakdown of territories.

## Updating the territories.

> **Required Permissions:** This command requires the Admin role or the manage_territory permission.

You can manually update territories. I don't know if I'll implement dynamic territory flow.

`territory/set <faction>=<room>` - Sets a specific faction to own a specific room. Defaults to the room you're currently in if no faction is specified.
`territory/HQ` <faction>=<room> - Designates a room as the faction's headquarters. Defaults to the room you're currently in. Not sure what this does yet. Locked to everyone but the faction members maybe. You can change your faction buff/debuff in a HQ.

## HQ

`hq` - Lists all faction headquarters.
`hq/ability` - Sets faction abilities, can only be used in the HQ by a high ranking faction member I guess.
`hq/head <character>` - Sets faction head. Leave blank to clear.

ideas: contested territory? percentile territory ownership?
