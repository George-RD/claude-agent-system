# Claude Code Autonomous Development Environment

This repository provides a complete autonomous development environment using Claude Code with specialized agents and commands.

## Core Philosophy
**Autonomous Development**: Claude Code works systematically through project requirements using a multi-agent approach with quality gates and safety boundaries.

## Agent System Architecture

### Available Agents
Agents are located in `.claude/agents/` directory:
- architect - Lead architect for analysis and design
- developer - Implementation specialist with testing
- debugger - Error investigation and root cause analysis
- quality-reviewer - Code quality and security review
- technical-writer - Documentation and explanations

### Command System
Commands are located in `.claude/commands/` directory:
- `/plan-execution` - Systematic project execution protocol
- `/prd` - Interactive requirements gathering
- `/project-init` - Project initialization and configuration

## Autonomous Workflow Protocol

### 1. Project Initialization
When starting a new project:
1. Run `/prd` to define project requirements (optional for new projects)
2. Run `/project-init` to configure project-specific settings
3. Claude Code will analyze requirements and create execution plan
4. Systematic delegation through agent pipeline ensures quality

### 2. Agent Pipeline Flow
```
Requirements → Architect (design) → Developer (implement) → Debugger (fix) → Quality Reviewer (validate) → Technical Writer (document)
```

### 3. Quality Gates
- **Zero linting violations** - Code must pass all project linters
- **100% test pass rate** - All existing tests must continue passing  
- **Test coverage >80%** - New code must be well-tested
- **Performance within 5%** - No significant performance regressions
- **Security review passed** - All security considerations addressed

## Project Standards

### Error Handling
- Never ignore errors - always handle appropriately
- Wrap errors with context for debugging
- Use appropriate error types for the technology stack
- Propagate errors up the stack with proper context

### Testing Requirements
- Integration tests for system behavior
- Unit tests for pure logic functions
- Property-based testing where applicable
- Test with real services when possible
- Cover edge cases and failure scenarios

### Code Quality
- Follow existing project conventions and patterns
- Keep functions focused and testable
- Use project-standard logging approaches
- Verify resource cleanup in concurrent code
- Avoid global state without clear justification

## Build Environment

### Default Commands
Projects should define these in their specific CLAUDE.md:
```bash
# Linting
npm run lint    # or: python -m ruff check, cargo clippy, etc.

# Type checking  
npm run typecheck    # or: mypy ., cargo check, etc.

# Testing
npm test    # or: pytest, cargo test, go test, etc.

# Build
npm run build    # or: cargo build, go build, etc.
```

## Safety and Security

### Development Container
- Isolated environment with firewall protection
- Non-root user with restricted permissions
- Network access controls for development safety
- Volume mounts for persistent configuration

### Permission Management
- `dangerously-skip-permissions` mode available in container
- Firewall rules restrict network access appropriately
- User permissions limited to development needs only

## Memory Management

This file serves as project memory and will be automatically loaded by Claude Code.

### Additional Memory Imports
- `@.claude/prompt-engineering.md` - Advanced prompting techniques and patterns

### Project-Specific Configuration
When `/project-init` is run, project-specific sections will be added below:

---

## Project-Specific Configuration
<!-- This section is populated by /project-init command -->

### Technology Stack
<!-- Filled in by /project-init -->

### Specific Build Commands  
<!-- Filled in by /project-init -->

### Project Conventions
<!-- Filled in by /project-init -->

### Testing Strategy
<!-- Filled in by /project-init -->

---

## Usage

### Quick Start (Autonomous Mode)
1. Clone this repository
2. Open in development container (VS Code will prompt)
3. Start Claude Code: `claude-code`
4. Run `/prd` to define project requirements (for new projects)
5. Run `/project-init` to configure for your specific project
6. Provide implementation requests
7. Claude Code automatically plans, implements, tests, and delivers

### Manual Agent Usage
You can also manually use specific agents when needed:
- architect - for design and analysis
- developer - for implementation
- debugger - for investigation
- quality-reviewer - for code review
- technical-writer - for documentation

The autonomous mode handles this delegation automatically through the `/plan-execution` command.