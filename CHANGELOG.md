# Changelog

## 0.3.0 - 2026-06-13

- Added series mode: one article → 1 cover + per-section illustrations as a consistent 16:9 set reused across blog, slides, and social (`references/series-mode.md`).
- Series consistency rules: one body style, locked palette, verbatim style paragraph, recurring motif, 8-image cap with merge notes, JSON manifest output.
- Added model adapters: prompt adjustments for GPT Image 2 vs Nano Banana 2, one-backend-per-series rule (`references/model-adapters.md`).
- Added series-mode eval cases and rubric row; series plan + manifest example.

## 0.2.0 - 2026-06-13

- Added content distillation step: long content is reduced to a core message, ranked keypoints, and exact in-image labels before prompting (`references/content-distillation.md`).
- Added WEC-class cover specification: composition zones, text budget, abstract motif library, palette, aspect variants, negative list (`references/cover-spec.md`).
- Added post-generation text verify loop: generated images are read back and compared against distilled labels, with up to 2 corrective regenerations.
- Declared image backend: GPT Image 2 (`gpt-image-2` / `gpt-5.5`) primary, Gemini Nano Banana 2 fallback, prompt-only when the host cannot generate.
- Added default signature `#voquoccuong` (bottom corner, small, faded; opt-out supported).
- Added eval cases for distillation and cover compliance; extended rubric.
- Added article-cover example prompt; resolved asset license status (AI-generated templates).

## 0.1.0 - 2026-06-12

- Initial public repository scaffold.
- Added installable `sketchnote-creator` skill package.
- Added seven style template assets.
- Added references, examples, docs, eval stubs, and packaging scripts.
