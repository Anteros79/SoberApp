# Project Structure

## Root Level Organization
```
/
├── .kiro/              # Kiro AI assistant configuration
├── .vscode/            # VS Code settings
├── app/                # Next.js App Router pages and layouts
├── components/         # Reusable React components
├── tests/              # Jest/Vitest test files
├── docker-compose.yml  # Docker services configuration
├── Dockerfile          # Container build instructions
├── package.json        # Dependencies and scripts
├── tsconfig.json       # TypeScript configuration
└── start-project.bat   # Automated project startup
```

## File Organization Conventions

### Next.js App Router Structure
- `/app` - Route definitions, layouts, and page components
- Server components by default, client components when needed
- Use `layout.tsx` for shared layouts
- API routes in `/app/api`

### Component Organization
- `/components` - Reusable UI components
- Group related components in subdirectories
- Use PascalCase for component files
- Include corresponding test files in `/tests`

### Environment & Configuration
- `.env.local` - Local environment variables (gitignored)
- `tsconfig.json` - TypeScript compiler options
- Path alias `@/*` points to project root

### Docker Files
- `Dockerfile` - Production container definition
- `docker-compose.yml` - Development environment setup
- Container name should reflect project type

## Naming Conventions
- Files: kebab-case for utilities, PascalCase for components
- Variables: camelCase
- Constants: UPPER_SNAKE_CASE
- All code and comments in English