<div align="center">

# @theBGuy

**Building systems that hold up under pressure.**

Creator of GitDesktop. Co-founder of Dispatch.

<sub>Go · TypeScript · React · React Native · PostgreSQL · Redis · Docker</sub>

</div>

---

I build backend infrastructure and the frontend interfaces that sit on top of it: the seam where they have to hold together under load. Distributed event pipelines, developer tooling, real-time systems. 6+ years in, the through-line is correctness and usability at scale. I pick the tool that keeps the system honest, then build it so it stays that way in production.

## Featured work

<!--
  Counts in the GitDesktop and kolbot rows are refreshed nightly by
  .github/workflows/metrics.yml, which rewrites the text between the paired
  stats markers. Those markers are HTML comments, so GitHub strips them at
  render time. Deleting one fails that workflow by design, rather than letting
  the number silently rot.
-->

<table>
  <tr>
    <td colspan="2" valign="top">
      <b><a href="https://gitdesktop.app">GitDesktop</a></b><br>
      <sub>Creator · Windows, macOS, Linux · signed, verified auto-updates · Apache-2.0</sub><br>
      <sub><b><!--stats:gd-stars-->181<!--/stats:gd-stars--></b>&#9733; · <!--stats:gd-forks-->16<!--/stats:gd-forks--> forks · <b><!--stats:gd-downloads-->1,365<!--/stats:gd-downloads--></b> installer downloads · <!--stats:gd-version-->v0.9.2<!--/stats:gd-version-->, first released June 2026</sub><br><br>
      Keyboard-first Git client for GitHub, GitLab, and Bitbucket: the whole PR lifecycle in-app (down to offline local PRs), a GitHub Actions cockpit, plus issues, discussions, and AI. GitHub and GitLab run through their own CLIs, so those tokens are never stored; AI runs on whatever provider you choose, local models included. Tauri 2 + React 19 + Rust.<br>
      <sub><a href="https://github.com/theBGuy/GitDesktop">github.com/theBGuy/GitDesktop</a> · <a href="https://github.com/theBGuy/GitDesktop/releases/latest">Download</a> · <a href="https://gitdesktop.app">gitdesktop.app</a></sub>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <b><a href="https://dispatch.tech">Dispatch</a></b><br>
      <sub>Co-founder &amp; Lead Engineer</sub><br><br>
      Multi-tenant SaaS webhook platform ingesting events from <b>18+ source providers</b>, routing them through filter/transform rules, and delivering to Discord, Slack, Telegram, and arbitrary HTTP endpoints. Go (Fiber) + Redis (asynq) + PostgreSQL behind a Next.js 16 / React 19 dashboard.<br>
      <sub><a href="https://docs.dispatch.tech">docs.dispatch.tech</a></sub>
    </td>
    <td width="50%" valign="top">
      <b><a href="https://github.com/blizzhackers/kolbot">kolbot</a></b><br>
      <sub>Lead maintainer since 2022 · <!--stats:kolbot-stars-->291<!--/stats:kolbot-stars-->&#9733; / <!--stats:kolbot-forks-->194<!--/stats:kolbot-forks--> forks</sub><br><br>
      Diablo II automation framework with <b>over a decade</b> of continuous development, still actively maintained. Re-architected a legacy codebase into a layered module hierarchy and built a plugin system on top of it.
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <b><a href="https://github.com/blizzhackers/kolbot-SoloPlay">kolbot-SoloPlay</a></b><br>
      <sub>Creator &amp; lead dev · <!--stats:soloplay-stars-->74<!--/stats:soloplay-stars-->&#9733; / <!--stats:soloplay-forks-->32<!--/stats:soloplay-forks--> forks</sub><br><br>
      Solo-play progression automation covering all <b>7 D2 classes</b>, driven by a profile-based config layer and a progression state machine.
    </td>
    <td width="50%" valign="top">
      <b><a href="https://github.com/blizzhackers/limedrop">limedrop</a></b><br>
      <sub>jQuery → React + TypeScript rewrite</sub><br><br>
      Led a full rewrite onto React + TypeScript: Web Workers for off-thread compute, React Window virtualization, and a structured rule builder.
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <b><a href="https://github.com/theBGuy/discord-semantic-search">discord-semantic-search</a></b><br>
      <sub>Local-first RAG</sub><br><br>
      Semantic search over Discord history, entirely local: Ollama embeddings into Postgres/pgvector. No data leaves the machine.
    </td>
    <td width="50%" valign="top">
      <b>More tooling</b><br>
      <sub>VS Code extensions, a Wails desktop app, an npm utility</sub><br><br>
      <sub><a href="https://github.com/theBGuy/vs-pkg-uninstaller">vs-pkg-uninstaller</a>, <a href="https://github.com/theBGuy/vs-react-native-stylesheet-cleaner">vs-react-native-stylesheet-cleaner</a>, and <a href="https://github.com/theBGuy/vsnip-check">vsnip-check</a> for VS Code; <a href="https://github.com/theBGuy/go-work-tracker">go-work-tracker</a> on Wails; the dependency-free <a href="https://github.com/theBGuy/array-remove">array-remove</a>. Everything else lives across <a href="https://github.com/theBGuy?tab=repositories">my repositories</a>.</sub>
    </td>
  </tr>
</table>

## Stack

Grouped by where it sits in the system; chosen for the job, not the language.

<b>Languages</b> &nbsp;
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)
![Rust](https://img.shields.io/badge/Rust-000000?style=flat&logo=rust&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)

<b>Frontend</b> &nbsp;
![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)
![Next.js](https://img.shields.io/badge/Next.js-000000?style=flat&logo=nextdotjs&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-06B6D4?style=flat&logo=tailwindcss&logoColor=white)

<b>Backend &amp; data</b> &nbsp;
![Node.js](https://img.shields.io/badge/Node.js-5FA04E?style=flat&logo=nodedotjs&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat&logo=postgresql&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-FF4438?style=flat&logo=redis&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)

## Activity

<div align="center">

![theBGuy's GitHub metrics — activity and most-used languages, including private and organization work](./metrics.svg)

</div>
