# Sketchnote Creator

Sketchnote Creator is an agent skill for turning notes, articles, frameworks, workflows, and business ideas into clear sketchnote-style image prompts or generated illustrations.

It is designed for:

- Visual summaries of long-form content
- Workshop and presentation graphics
- Business frameworks and strategy maps
- AI / automation / leadership educational visuals
- Vietnamese and English sketchnote outputs

## What is included

```text
skill/sketchnote-creator/
├── SKILL.md
├── agents/openai.yaml
├── assets/
└── references/
```

The installable skill lives in `skill/sketchnote-creator`.

## Styles

| Code | Style | Best for |
| --- | --- | --- |
| ACD | AI Contrast Drama | Hooks, covers, before/after, manual vs AI |
| WEC | Watercolor Editorial Cover | Calm covers, event recaps, premium banners |
| SBS | Sketchnote Blue Story | One insight, quote, reflective lesson |
| SB | Sketchnote Blue | Multiple lessons, recap, idea list |
| FBW | FlowBot Watercolor | Workflows, SOPs, automation flows |
| BLD | Business Line Diagram | Frameworks, systems, architecture maps |
| VTK | Visual Thinking Knowledge | Deep analysis and knowledge maps |

## Install

Copy the installable folder into your Codex skills directory:

```powershell
Copy-Item -Recurse .\skill\sketchnote-creator $HOME\.agents\skills\sketchnote-creator
```

Restart Codex after installing.

## Quick Use

Example request:

```text
Use sketchnote-creator to create an illustration for this business framework: ...
```

If you only want a prompt instead of generating an image:

```text
Use sketchnote-creator and return only the image prompt for this article: ...
```

## Repository Status

This project is an early public scaffold. Review asset licensing before publishing images or accepting outside contributions.

## License

Code and documentation are MIT licensed. Template assets are covered by `ASSET_LICENSE.md` until replaced with fully verified public assets.
