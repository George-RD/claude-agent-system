# Project Templates for Autonomous Development

This directory contains templates that guide Claude Code through autonomous development of common project types. Each template provides technology detection patterns, implementation phases, agent instructions, and quality requirements.

## Available Templates

### 🌐 Web API (`web-api.md`)
**For**: REST APIs, GraphQL APIs, microservices
**Technologies**: Node.js/Express, Python/FastAPI, Go/Gin, Rust/Axum
**Features**: 
- Authentication (JWT, sessions)
- CRUD operations
- Input validation
- OpenAPI documentation
- Rate limiting and security
- Comprehensive testing

### 📱 Web Application (`web-app.md`)  
**For**: Full-stack web applications, SPAs, SSR apps
**Technologies**: React/Next.js, Vue/Nuxt, Angular
**Features**:
- Frontend with responsive UI
- Backend API integration
- User authentication
- State management
- Real-time features
- E2E testing

### ⚡ CLI Tool (`cli-tool.md`)
**For**: Command-line tools, utilities, automation scripts
**Technologies**: Node.js/Commander, Python/Click, Go/Cobra, Rust/Clap
**Features**:
- Argument parsing
- Interactive prompts
- Configuration management
- Cross-platform builds
- Auto-completion

## How Templates Work

### 1. Technology Detection
Each template defines patterns to detect the project type:
```markdown
### Node.js/Express
- **Files**: `package.json`, `server.js`, `app.js`
- **Dependencies**: `express`, `cors`, `helmet`
- **Testing**: `jest`, `supertest`
```

### 2. Implementation Phases
Templates break down development into systematic phases:
```markdown
### Phase 1: Foundation Setup
├── Initialize project structure
├── Configure build system
└── Set up testing framework

### Phase 2: Core Features
├── Authentication system
├── CRUD operations
└── Error handling
```

### 3. Agent Instructions
Each template provides specific instructions for each agent:
```markdown
### For @agent-architect
- Design RESTful API following OpenAPI specifications
- Plan database schema with relationships

### For @agent-developer  
- Implement REST conventions (GET, POST, PUT, DELETE)
- Use appropriate HTTP status codes
```

### 4. Quality Gates
Templates define mandatory quality requirements:
- Zero linting violations
- >80% test coverage
- Performance baselines
- Security requirements

## Template Usage

### Automatic Detection
When you run `/init`, Claude Code:
1. Analyzes project files and dependencies
2. Matches against template detection patterns
3. Selects the most appropriate template
4. Applies template-specific configuration

### Manual Template Selection
You can also specify a template explicitly:
```
/init --template=web-api
```

### Custom Templates
Create custom templates by following the existing template structure:

```markdown
# My Custom Template

## Technology Detection Patterns
[Define how to detect this project type]

## Standard Features Template
[Define what features should be implemented]

## Implementation Phases
[Break down development into phases]

## Agent Instructions
[Provide specific instructions for each agent]

## Testing Strategy
[Define testing requirements]
```

## Template Development Guidelines

### Detection Patterns
- **Precise**: Avoid false positives with other project types
- **Comprehensive**: Cover all major variants of the technology
- **Hierarchical**: More specific patterns override general ones

### Implementation Phases
- **Incremental**: Each phase should be testable independently
- **Dependencies**: Clear prerequisites between phases
- **Manageable**: 5-20 line changes per task

### Agent Instructions
- **Specific**: Concrete, actionable guidance
- **Technology-aware**: Account for language/framework specifics
- **Quality-focused**: Emphasize testing and best practices

### Quality Gates
- **Measurable**: Objective criteria that can be validated
- **Automated**: Can be checked with tools
- **Comprehensive**: Cover functionality, performance, security

## Contributing New Templates

To add a new template:

1. **Identify the project type** and common patterns
2. **Research best practices** for that technology stack
3. **Define detection patterns** for automatic recognition
4. **Break down implementation** into manageable phases
5. **Write agent-specific instructions** for each development role
6. **Define quality gates** and testing requirements
7. **Test the template** with actual projects
8. **Document usage examples** and edge cases

### Template Checklist
- [ ] Clear detection patterns for automatic recognition
- [ ] Implementation phases with specific tasks
- [ ] Agent instructions for all 5 agent types
- [ ] Comprehensive testing strategy
- [ ] Quality gates and success criteria
- [ ] Example code snippets and configurations
- [ ] Cross-platform considerations
- [ ] Security and performance requirements

## Examples

### Starting a New API Project
```bash
mkdir my-api && cd my-api
npm init -y
npm install express cors helmet
claude-code
> /init
# Claude Code detects web-api template and configures autonomous development
> "Build a task management API with user authentication and CRUD operations"
```

### Starting a CLI Tool
```bash
mkdir my-tool && cd my-tool  
cargo init
claude-code
> /init
# Claude Code detects cli-tool template
> "Build a file organizer that sorts files by type with progress indicators"
```

Templates enable Claude Code to work autonomously on any type of project by providing the specialized knowledge needed for each domain.