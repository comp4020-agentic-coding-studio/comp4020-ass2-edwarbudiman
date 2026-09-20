# Process overview

## What I built

I built a course about learning in an era when information is easy to access. The idea came from a question I kept returning to: if an LLM can explain almost anything, what kind of learning helps us actually understand the material?

## How I got here

I began by discussing the idea with ChatGPT using Sol at medium reasoning effort. Through that back-and-forth conversation, I explored what a course should offer if an LLM can answer every question. This brought me back to a question I had raised in class: how do people develop an understanding of the material and its context? My starting point was that reading about something cannot fully replace experiencing it. I used the conversation to shape a course around what it means to learn under these conditions. (fec78)

To develop the course material, I created four agent roles: a course designer, a university committee representative, a student, and a moderator. I used Herdr to let the agents communicate by sending commands between terminal tabs. I asked them to discuss the course from their different perspectives and give feedback on its direction. I then used the results of that discussion to create a map of the course material. (fec78...6591)

With the course map in place, I used Claude to draft the lecture content. I manually reviewed the drafts and asked for help revising passages that were unclear. (47616)

The final step was to refine the visual presentation of the content.

## Before you ship

`pnpm check:evidence` verifies that this comment is gone, that your citations
resolve to real commits, that a crit week's reflection entry is in
`reflections/`, and that your `CLAUDE.md` is there. It checks that your account
is traceable, not that it is good: that is the marker's call.

Images aren't checked: unlike a citation whose SHA doesn't resolve, a broken
image is visible the moment this file is rendered on GitHub.
