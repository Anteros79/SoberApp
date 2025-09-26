\## AI and Project Rules

\- Apply all rules in this file when generating code or project configs.

\- All code, comments, variable names, logs, and errors must be in English.

\- Use UTF-8 encoding for all files.



\## TypeScript Guidelines

\- Use TypeScript with `strict: true` in `tsconfig.json`.

\- Always specify explicit types for function parameters and return values.

\- Avoid the `any` type; use interfaces for object types.

\- Run `tsc --noEmit` for type checking before builds.



\## Next.js Guidelines

\- Use App Router for routing.

\- Prefer server components over client components when possible.

\- Organize files: `/app` for routes, `/components` for reusable UI.



\## Docker and Batch File Guidelines

\- Dockerize the project with a `Dockerfile` in the project root.

\- Create a `docker-compose.yml` for services.

\- Set a unique `container\\\_name` in `docker-compose.yml` based on the project type.

\- The `start-project.bat` file must verify key files, find a free port, start Docker, and open Chrome.



\## Quality and Workflow Rules

\- Error Handling: Include `try-catch` blocks in async functions and log errors clearly.

\- Testing: Generate Jest or Vitest test files in `/tests` for all components and API routes.

\- Git Workflow: Follow conventional commits (e.g., `feat:`, `fix:`).

\- Environment Variables: Use `.env.local` for secrets; reference them as `process.env.VARIABLE\\\_NAME`.

\- Code Documentation: Add JSDoc comments for all functions and complex logic.

\- Performance: Optimize images for the web; use Next.js image optimization.

\- Security: Avoid inline scripts and use Content Security Policy (CSP) headers.

\- Build Checks: Run `npm run lint` and `npm run build` before deploying.

