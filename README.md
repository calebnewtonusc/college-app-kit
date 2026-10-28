# college-app-kit

A college application coach that lives in a folder on your computer. Open it in Claude or Codex and it tracks every school, deadline, essay and portfolio piece, tells you the one thing to do today, and asks the questions that turn a list of things you did into a story worth reading. It never writes your essays for you.

Made for people who've never coded. You need three things, and none of them involve the terminal:

- A paid Claude plan (Pro or Max) or a paid ChatGPT plan, which includes Codex
- A GitHub account (free, https://github.com/signup). It keeps a private backup of your applications with every version saved
- A Mac or Windows computer

## Set it up (about 10 minutes)

### Pick the right app and tab first

- **Claude:** download the Claude desktop app from https://claude.ai/download and
  sign in. Click the `</>` icon at the top left to switch to the **Code** tab. The
  regular Chat tab can't touch the files on your computer, so it can't set this up,
  and it'll tell you to link GitHub in Settings, Connectors. You don't need that.
- **Codex:** download the ChatGPT app from https://learn.chatgpt.com/docs/app and
  sign in. Use **Codex** inside it, not a regular ChatGPT chat, for the same reason.

### Paste one message

In the Code tab (or Codex), choose your **Documents** folder as the folder to work
in, then paste this and send it:

```
Set up my college application coach from https://github.com/calebnewtonusc/college-app-kit.
Download it into a new folder called college-app-kit inside this folder. It's a
public repo, so use curl or the ZIP link and don't ask me to sign in to GitHub for
this part. Then read its AGENTS.md and plays/setup.md and run the setup with me.
Do every computer step yourself. Before anything that opens a window or needs me
(a GitHub sign-in in my browser, an installer window, a password), tell me first
and warn me it might open behind this app. At the end, tell me to open the
college-app-kit folder itself from now on.
```

It interviews you one question at a time: your schools, your deadlines, how many hours you really have, how you get stuck. Then it reads each school's own website for the requirements and dates, and saves everything to a **private** GitHub repo so nothing is lost.

It stops for you in two places, and each one can open a window behind the app. If
nothing seems to happen, look for it (Command-Tab on a Mac, Alt-Tab on Windows):

- **GitHub sign-in.** Your web browser opens to GitHub and asks for a code like
  `ABCD-1234` that the coach shows you. If the browser isn't signed in to GitHub,
  it'll ask you to sign in first, then the code page comes next. Paste the code
  and click Authorize.
- **An installer window**, only if your computer is missing a tool. On a Mac it's
  Apple's Command Line Tools: click Install and wait. On Windows it's a "Do you want
  to allow this app" box: click Yes.

Rather do it by hand? On this page, click the green **Code** button, then **Download ZIP**, unzip it, open the `college-app-kit-main` folder in the Code tab or Codex, and type **set me up**.

**If you're one of the first people through:** at the end, tell the coach "write a
PDF to my Downloads folder listing every snag I hit setting this up, in order, with
what fixed each one" and send it to Caleb.

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
