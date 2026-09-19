# Flash Rules Conversion Notes

Generated from `flash.rules` and `flash.speech`.

## Converted rule files

- `rules/0000-ball-and-coils.lua` and `.blockly.json`
- `rules/0100-lamp-awards.lua` and `.blockly.json`
- `rules/0200-switch-effects.lua` and `.blockly.json`
- `rules/0300-attract.lua` and `.blockly.json`

Each `.blockly.json` file is a Blockly workspace serialization for one rule node. The matching `.lua` file is the Lua preview/runtime source generated from the same rule structure.

## Simplifications from the old rule file

- Old silent `S` trigger-history rules were replaced with readable named states such as `player 1 ball 1 served`.
- Old `cooldown=...` rules were replaced with readable named once-per-time-window checks such as `spinner effect` and `attract sparkle effect`.
- Repeated `!attract` conditions were grouped under surrounding non-attract checks where that does not change behavior.
- Event-edge helpers were replaced by handler parameters, for example `number == 1 and state == 0` in `onCoilChanged`.
- Speech is inline Lua via `ppuc.speech("...")`; `flash.speech` IDs are no longer emitted as `O` triggers.

## Runtime/editor support used by this conversion

- `ppuc.onlyOnceEvery(name, ms)` for readable named once-per-time-window checks.
- `ppuc.setState(name, ms)` and `ppuc.stateActive(name)` for readable temporary state.
- `ppuc.effectTrigger("name", value)` for named board effects such as `flash-flasher`, `extra-ball-shaker`, and `attract-sparkle`.

## Intentional differences from the old files

- The commented high-score rules from `flash.rules` remain omitted.
- Ball-served states use a 60000 ms duration, matching the current Lua trigger-history retention window.
- Delays use `ppuc.after(...)`, which is non-blocking in `ppuc-pinmame`.
- The Flash typo `Tripple bonus activated!` is preserved exactly from `flash.speech`.
