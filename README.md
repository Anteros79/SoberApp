# Next.js AI-Assisted Development Template

A modern Next.js application template optimized for AI-assisted development workflows with Docker containerization and automated tooling.

## Features

- **Next.js 14+** with App Router and TypeScript
- **Docker** containerization for consistent development
- **Automated startup** with port detection
- **AI-friendly** code structure and conventions
- **Kiro AI** steering rules for guided development

## Quick Start

### Prerequisites
- Node.js 18+
- Docker & Docker Compose
- npm

### Development

1. **Automated Setup** (Windows):
   ```bash
   start-project.bat
   ```
   This will verify files, find an available port, start Docker, and open your browser.

2. **Manual Setup**:
   ```bash
   npm install
   npm run dev
   ```

### Docker Development
```bash
docker-compose up -d
```

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Create production build
- `npm run start` - Start production server
- `npm run lint` - Run ESLint

## Project Structure

```
/
├── .kiro/              # Kiro AI assistant configuration
├── app/                # Next.js App Router pages
├── components/         # Reusable React components
├── tests/              # Test files
├── docker-compose.yml  # Docker services
├── Dockerfile          # Container definition
└── start-project.bat   # Automated startup
```

## AI Development

This template includes Kiro AI steering rules that guide code generation:
- TypeScript strict mode enforcement
- Next.js App Router patterns
- Docker containerization standards
- Consistent naming conventions

## License

ISC