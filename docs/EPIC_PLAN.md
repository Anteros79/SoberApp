# SoberApp Delivery Plan

This document breaks the project into an epic, the features that compose it, and the user stories with detailed task lists. Each task is tracked with a status indicator so the list can function as an up-to-date todo board.

## Epic: Monorepo Conversion and Firebase Deployment
- **Goal:** Restructure SoberApp into a workspace-based monorepo ready for Firebase Hosting and Functions deployments while preserving existing developer tooling.
- **Success Metrics:**
  - Next.js app relocated under `apps/web` with shared packages scaffolded.
  - Firebase CLI configured for Hosting + Functions deploys from the repo root.
  - Developer workflows (`npm`, Docker, Windows helper scripts) continue to run without regression.
  - Documentation updated to guide contributors through the new structure and deployment steps.

### Feature 1: Workspace Monorepo Scaffolding
- **Objective:** Convert the single-package layout into a `apps/*` + `packages/*` monorepo with consistent tooling.
- **Status:** ☐ Not Started
- **Stories:**
  1. **Story: Create workspace-aware package configuration**
     - _As a developer I want the project organized into workspaces so I can scale multiple apps and packages without config drift._
     - Tasks:
       - ☐ Update root `package.json` to be `private`, declare Yarn/npm workspaces, and strip app-specific dependencies.
       - ☐ Scaffold `apps/web/package.json` containing existing Next.js dependencies, scripts, and lint config.
       - ☐ Move source files (app directory, components, configs) into `apps/web` and fix import paths.
       - ☐ Add `packages/shared` placeholder with README to support future shared modules.

  2. **Story: Align TypeScript configurations with workspaces**
     - _As a TypeScript user I need consistent path aliases across the monorepo so imports resolve cleanly._
     - Tasks:
       - ☐ Create root `tsconfig.base.json` with shared compiler options and path aliases.
       - ☐ Update root `tsconfig.json` to extend the base config and include references to workspace projects.
       - ☐ Create `apps/web/tsconfig.json` extending the base and define `@web/*` or reuse `@/*` pointing at local sources.
       - ☐ Ensure `packages/shared/tsconfig.json` exists with build settings for shared libraries.

  3. **Story: Keep developer tooling functional**
     - _As a contributor I want the existing automation (linting, Docker, scripts) to still work after the move._
     - Tasks:
       - ☐ Update `docker-compose.yml` (and future Dockerfile) to mount `apps/web` paths correctly.
       - ☐ Modify `start-project.bat` to launch the workspace-aware dev server.
       - ☐ Validate `npm run dev`, `npm run lint`, and `npm run build` work from the root by forwarding to `apps/web`.
       - ☐ Document the new workflows in `README.md`.

### Feature 2: Firebase Deployment Pipeline
- **Objective:** Enable Firebase Hosting + Functions deploys for the Next.js app from the monorepo root.
- **Status:** ☐ Not Started
- **Stories:**
  1. **Story: Configure Firebase CLI tooling**
     - _As a release engineer I need scripts to authenticate and deploy to Firebase without remembering long CLI commands._
     - Tasks:
       - ☐ Add `firebase-tools` as a dev dependency at the repo root.
       - ☐ Create npm scripts (`firebase:login`, `firebase:emulate`, `firebase:deploy`) targeting the workspace layout.
       - ☐ Add `.firebaserc` with project aliases and `firebase.json` describing Hosting and Functions configuration.

  2. **Story: Prepare Next.js for Firebase Hosting + Functions**
     - _As a user I expect the web app to run through Firebase Hosting with SSR handled by Cloud Functions._
     - Tasks:
       - ☐ Scaffold Firebase Functions workspace (e.g., `apps/functions`) exporting the Next.js handler.
       - ☐ Write build scripts tying Next.js output to Firebase deploy steps.
       - ☐ Configure Hosting rewrites to direct traffic to the Functions SSR endpoint.
       - ☐ Document environment variable handling and secret management.

  3. **Story: Provide developer documentation**
     - _As a teammate I want clear docs on how to emulate and deploy so onboarding is quick._
     - Tasks:
       - ☐ Update `README.md` with Firebase setup instructions (CLI login, environment setup, deploy workflow).
       - ☐ Add troubleshooting tips for common Firebase deployment issues.
       - ☐ Document local emulation flow (commands and required configs).

### Feature 3: Quality Assurance & Regression Safety Nets
- **Objective:** Ensure the migration retains existing quality gates and sets the stage for future automation.
- **Status:** ☐ Not Started
- **Stories:**
  1. **Story: Establish automated lint/test pipelines**
     - _As a maintainer I want linting and testing to run consistently across workspaces so changes remain stable._
     - Tasks:
       - ☐ Update ESLint/Prettier configs to target workspace paths.
       - ☐ Ensure Jest/Vitest configs (when added) reference workspace roots.
       - ☐ Plan CI pipeline updates for workspace commands.

  2. **Story: Validate developer experience post-migration**
     - _As a developer I want confidence that everyday workflows still function._
     - Tasks:
       - ☐ Create checklist for validating Docker, npm, and Windows helper flows after restructuring.
       - ☐ Run through checklist and log findings.
       - ☐ Capture follow-up issues if regressions are found.

## Progress Log
| Date | Update |
| --- | --- |
| _Pending_ | Initial plan drafted; work not yet started. |

## Usage Notes
- Treat the checkboxes as the live source of truth. Update each task’s status (☐ → ☑) as work completes.
- Add new stories/features beneath the epic if scope expands; this document is intended to evolve alongside the project.
