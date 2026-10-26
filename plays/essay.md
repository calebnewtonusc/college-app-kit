# Working an essay or short answer

1. Read the prompt from the school's site and the whole draft. Ask for the newest version first. Feedback on an old draft wastes a day.
2. Run `sh tools/count.sh <file> <limit>`.
3. Find what the prompt is really asking (`skills/unasked-questions/SKILL.md`).
4. Check it has ONE thread. Three stories in 500 words means none gets room.
5. Every bracket hole like [what they said] gets filled from their memory, never yours.
6. Feedback, in this order:
   - What works. Quote it and tell them to keep it.
   - The ONE biggest fix (usually: the essay turns from a scene into a list of traits, or they're not in their own story until the second half).
   - One specific question that gets the missing fact: exact words, a number, where they were.
7. If a scene already proves a point, the sentence that explains it can go. End on the concrete thing, not a lesson.
8. Run `python3 tools/slop-check <file> --issues` and name what it flags. Never rewrite the line for them.
9. Write the guide for this piece into `work/GUIDES.md` and update `work/TRACKER.md`.
