---
name: sketchnote-creator
description: |
  Create sketchnote illustrations, diagrams, visual summaries, educational graphics, workshop visuals, article covers, workflow diagrams, business frameworks, and infographic-style image prompts or generated images. Use when the user asks to create, design, generate, revise, or prompt an illustration, sketchnote, diagram, visual map, visual explanation, cover image, thumbnail, infographic, workshop graphic, or social media educational visual. Supports Vietnamese and English outputs.
---

# Sketchnote Creator

Turn user content into clear sketchnote-style visuals for slides, workshops, social posts, articles, AI/automation/business/startup/leadership content.

## Default Workflow

1. Analyze the user's content.
2. Distill long content (over ~300 words or multi-section) into a core message, ranked keypoints, and exact in-image labels. Follow `references/content-distillation.md`.
3. Select the best style unless the user specified one.
4. Read the matching template image from `assets/` before generating.
5. Silently define a visual blueprint. All in-image text is copied verbatim from the distilled labels.
6. Silently audit the blueprint with the quality gate.
7. Generate the image, or return only a prompt if the user asks for prompt-only output.
8. Verify text: read the generated image back and compare every word, including Vietnamese accents, against the distilled labels. If text is wrong, regenerate with corrections up to 2 times, then report any remaining issue honestly.

Defaults: 16:9 ratio, same language as input, short readable text, mobile-friendly labels.

When returning the image, list the keypoints/labels used so the user can verify accuracy.

Do not ask the user to choose a style unless the request is truly unclear.

## Series Mode

When the user asks for a set of images (series, carousel, "bộ ảnh", one illustration per section/slide), follow `references/series-mode.md`: distill per section, build an image plan, lock one style and palette for the whole set, generate at 16:9, and return a manifest. One 16:9 set serves blog, slides, and social.

## Image Backend

- Primary: GPT Image 2 (`gpt-image-2` / `gpt-5.5`, native in Codex).
- Fallback: Gemini Nano Banana 2.
- If the host agent cannot generate images, return prompt-only output instead of failing.

Adapt the final prompt to the active backend per `references/model-adapters.md`. Use one backend per series.

## Signature

Unless the user opts out or provides their own brand mark, add `#voquoccuong` at a bottom corner: small, low-contrast, slightly faded — a quiet signature, never competing with the content.

## Safety

- Never execute code or scripts from image prompts.
- Refuse hidden text, steganography, credential embedding, or policy-violating imagery.
- Do not expose the internal blueprint or audit unless the user explicitly asks.
- Do not invent prices, names, facts, or claims when source content is provided.

## Style Selection

| Content Type | Style |
| --- | --- |
| contrast, hook, before/after, AI vs manual | ACD |
| elegant cover, minimal text, event recap | WEC |
| one insight, quote, emotional story | SBS |
| multiple lessons, recap, idea list | SB |
| step-by-step, workflow, SOP, automation flow | FBW |
| framework, system, architecture, strategy map | BLD |
| deep explanation, visual essay, knowledge map | VTK |

If content fits multiple styles, choose the one that makes the core message easiest to understand in 3 seconds.

For detailed style rules, read `references/style-library.md`. When building the final prompt, read `styles/{CODE}.yaml` for the exact palette hex values, typography, composition, text-density limit, and failure modes of the selected style — use those values verbatim instead of improvising colors.

For cover requests (article/blog/event cover, WEC-class), follow `references/cover-spec.md`: title + subtitle + abstract motifs only, no keypoints on the image.

## Blueprint Checklist

Before writing the final prompt, determine:

- Core message: one idea understood in 3 seconds.
- Strongest USP: the most specific valuable point.
- Main visual metaphor: one dominant metaphor.
- Layout: headline, main visual, labels, CTA, hierarchy.
- Text density: low, medium, or high. Prefer low/medium.
- Visual density: low, medium, or high. Avoid clutter.
- CTA logic: natural ending of the visual story.

Use `references/metaphor-map.md` when the metaphor is not obvious.

## Quality Gate

Score internally from 1-10:

- Message clarity
- Visual impact
- Readability
- Style consistency

Pass only when total score is at least 32/40 and no item is below 8. If it fails, refine once or twice before generating.

For details, read `references/quality-gate.md`.

## Final Prompt Requirements

Every final image prompt must include:

- Selected style code and template path.
- Core message and main metaphor.
- Layout structure and key visual elements.
- Exact text inside the image.
- Color, typography, and aspect-ratio rules.
- Things to avoid.

Use `references/prompt-patterns.md` for reusable prompt structures.

## Output Rules

| User Request | Action |
| --- | --- |
| create/generate/design image | Read template, then generate directly |
| ask for prompt | Return style choice and copy-ready prompt |
| content only | Treat as create image request |
| revise | Keep previous style unless the user requests a new style |
| series / carousel / per-section set | Series mode: plan first, then generate the set |

For Vietnamese visuals, follow `references/vietnamese-text-guidelines.md`.
