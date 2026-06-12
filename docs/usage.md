# Usage

## Quick Start: Vietnamese Blog Cover

Copy this and replace the title/subtitle:

```text
Use sketchnote-creator to create a minimal cover for my blog post.
Title: 7 điểm chính từ buổi Cafe Talk Online
Subtitle: Ngày 28/05/2026
```

**Important — Vietnamese accents:** type your title/subtitle with exact accents (á, ă, â, ê, ô, ơ, ư, đ...). The skill verifies the rendered text and regenerates if wrong, but correct accents in your request give the best result. If accents still come out wrong, see `troubleshooting.md`.

## Generate an Image

```text
Use sketchnote-creator to create a sketchnote image for this article: ...
```

## Return Prompt Only

```text
Use sketchnote-creator and return only a copy-ready image prompt for this framework: ...
```

## Create a Cover

```text
Use sketchnote-creator to create a minimal cover for this article. Title: ... Subtitle: ...
```

Covers follow `references/cover-spec.md`: only title + subtitle + abstract motifs, with a small `#voquoccuong` signature at the bottom corner (say "no signature" to omit it).

## Create a Series

```text
Use sketchnote-creator to create a cover plus one illustration per section for this article: ...
```

Series mode distills each section, shows you an image plan first, then generates a consistent 16:9 set (one style, one palette) with a JSON manifest. The same set works for blog, slides, and social. See `references/series-mode.md`.

## Long Content

Long articles are automatically distilled into a core message and 3-7 keypoints before image generation. The keypoints used are listed with the result so you can verify accuracy.

## Revise an Image

```text
Revise the previous sketchnote. Keep the same style, reduce text, and make the workflow clearer.
```

## Best Inputs

Good inputs include:

- A headline and short article
- A list of steps
- A business framework
- A before/after description
- A community or product overview
