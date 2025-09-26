# Technology Stack

## Core Technologies
- **Framework**: Next.js (App Router)
- **Language**: TypeScript with strict mode enabled
- **Runtime**: Node.js 18+ (Alpine Linux in Docker)
- **Package Manager**: npm

## Development Environment
- **Containerization**: Docker with docker-compose
- **Port**: Default 3000 (auto-detection available)
- **Hot Reload**: Enabled in development mode

## Build System & Commands

### Essential Commands
```bash
# Development
npm run dev          # Start development server
npm run build        # Production build
npm run start        # Start production server
npm run lint         # Run ESLint

# Docker
docker-compose up -d # Start containerized environment
```

### Project Startup
Use `start-project.bat` for automated setup:
- Verifies required files (docker-compose.yml, Dockerfile, package.json)
- Finds available port starting from 3000
- Starts Docker containers
- Opens browser and starts dev server

## TypeScript Configuration
- Strict mode enabled
- Path aliases: `@/*` maps to project root
- JSX preserve mode for Next.js
- ES5 target with modern library support