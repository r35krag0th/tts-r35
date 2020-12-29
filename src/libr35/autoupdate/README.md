# TTS Component Auto-Updater

This is inspired by the following implementations

- https://github.com/Andr3wD/TTS-Helpful-Scripts/blob/master/AutoUpdater.lua
- https://github.com/Eldinnie/TTS-Helpful-Scripts/blob/master/AutoUpdater.lua

## Integration

You will need to set have to global variables set in the lua script you want to update.

```lua
ScriptClass = ""
ScriptVersion = 1234
```

You will want to name `ScriptClass` to the same thing as the actual filename.  So `HelloWorld.ttslua` would have:

```lua
ScriptClass = "HelloWorld"
ScriptVersion = 1
```

Next you will need a JSON that dictates version upgrades.  We could have the component do some minimal parsing, but it's a lot more wasteful to download large scripts when you may not need to update.  Create `versions.json` in the same directory with the following content.

Here you can control all of the "current" versions for all ***ScriptClass**es in a directory.

```json
{
    "HelloWorld": 1234
}
```