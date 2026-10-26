# college-app-kit

A college application coach that lives in a folder on your computer. Open it in Claude or Codex and it tracks every school, deadline, essay and portfolio piece, tells you the one thing to do today, and asks the questions that turn a list of things you did into a story worth reading. It never writes your essays for you.

Made for people who've never coded. You need three things, and none of them involve the terminal:

- A paid Claude plan (Pro or Max) or a paid ChatGPT plan, which includes Codex
- A GitHub account (free, https://github.com/signup). It keeps a private backup of your applications with every version saved
- A Mac or Windows computer

## Set it up (about 10 minutes)

1. Get the app you'll use.
   - Claude: download the Claude desktop app from https://claude.ai/download and sign in. You'll use the **Code** tab.
   - Codex: download the ChatGPT app from https://learn.chatgpt.com/docs/app and sign in. You'll use **Codex** inside it.
2. Get this folder. On this page, click the green **Code** button, then **Download ZIP**. Unzip it. You'll get a folder called `college-app-kit-main`. Move it somewhere you'll find it, like Documents, and rename it anything you want.
3. Open the folder in your app. In Claude's Code tab or in Codex, choose that folder as the folder to work in.
4. Type **set me up** and send it.

It interviews you one question at a time: your schools, your deadlines, how many hours you really have, how you get stuck. Then it reads each school's own website for the requirements and dates, and saves everything to a **private** GitHub repo so nothing is lost. When it needs you (a browser sign-in, your computer password), it says exactly what to do.

After that, open the folder any day and say **what do I do today**.

## What it does

- Keeps one tracker of every school, round and deadline, each checked on the school's own site with the date it was checked
- Lists every required and optional piece for every school, with word limits, and counts your words with a tool instead of guessing
- Builds a story bank from your own memories before you write anything, then helps you find the one thread that ties your application together
- Reads every draft you share and gives feedback in one shape: what's strong, the one biggest fix, and one specific question
- Checks every claim with one test: could you defend it in a 15-minute interview?
- Flags AI-sounding writing in your drafts and names the pattern, without rewriting your line
- Plans one thing a day against the hours you actually have, and tells you straight when it doesn't fit

## What it won't do

Write your essays, short answers, scripts or captions. Not even one sentence. Admissions readers can tell, interviewers quote your application back to you, and every line has to be something you can say out loud without reading it. When you ask it to just write it, it asks you a smaller question instead.

## What's inside

- `AGENTS.md` (and `CLAUDE.md`, which points to it): how the coach works
- `you/`: your profile, story bank, thread and life outside of apps
- `work/`: schools, the tracker, your essays and pieces, and the guides it writes you
- `plays/`: the step-by-step moves it runs (setup, essays, portfolio pieces, the final week)
- `reference/coaching.md`: the full method, from coaching a real senior through an early action sprint
- `reference/coach-prompt.md`: paste this into any chat to get the same coach anywhere
- `skills/`: honesty checks, reading as the reader, finding the question under the prompt, and AI-writing detection
- `tools/`: word counts, deadline math and an AI-writing scanner

## Privacy

Your essays and notes stay on your computer and in your own private GitHub repo. Don't fork this repo publicly with your work in it.

## Sources

- [grilling](skills/grilling/LICENSE) and [no-ai-slop](skills/no-ai-slop/LICENSE) keep their original licenses
- The rest: built by Caleb Newton from coaching friends through their applications

All glory to God! ✝️❤️
