# Claude Code Autonomous Development Environment

A comprehensive autonomous development environment using Claude Code with specialized agents, slash commands, and containerized development workflows.

## 🚀 Quick Start

1. **Clone and Setup**
   ```bash
   git clone <this-repo>
   cd claude-agent-system
   code .  # VS Code will prompt to open in dev container
   ```

2. **Start Claude Code**
   ```bash
   claude-code
   ```

3. **Initialize Your Project**
   
   **Use `/prd` when:**
   - Starting a completely new project
   - Adding major new features to existing projects
   - Need to clarify or document complex requirements
   - Working with stakeholders who need structured requirements
   
   **Skip `/prd` when:**
   - Making simple bug fixes or small improvements
   - Project requirements are already clear and well-defined
   - Working on quick prototypes or experimental code
   
   ```
   /prd          # Interactive requirements gathering (when needed)
   /project-init # Configure project-specific settings (always run)
   ```

4. **Start Building**
   ```
   /plan-execution "Build a REST API for task management with authentication"
   ```

5. **Claude Code Delivers**
   - Automatically plans and executes using specialized agents
   - Implements with comprehensive testing and quality gates
   - Delivers production-ready, documented code

## 🏗️ Architecture

### Multi-Agent System
```
Requirements → Architect → Developer → Debugger → Quality Reviewer → Technical Writer
```

**Available Agents** (in `.claude/agents/`):
- **🏗️ architect** - Technical design and architecture analysis
- **👨‍💻 developer** - Implementation with testing focus
- **🐛 debugger** - Systematic error investigation and root cause analysis  
- **✅ quality-reviewer** - Code quality, security, and performance review
- **📝 technical-writer** - Documentation and technical explanations

### Slash Commands
**Located in `.claude/commands/`:**
- `/prd` - Interactive Product Requirements Document creation
- `/project-init` - Analyze codebase and configure project-specific settings
- `/plan-execution` - Systematic multi-phase project execution

### Quality Gates
- ✅ Zero linting violations
- ✅ 100% test pass rate  
- ✅ >80% test coverage for new code
- ✅ Performance within 5% of baseline
- ✅ Security review passed
- ✅ Comprehensive documentation

## 🛠️ Development Environment

### DevContainer Features
- **Isolated & Safe**: Containerized development with firewall protection
- **Permission Managed**: Non-root user with appropriate restrictions
- **Pre-configured**: Claude Code CLI and development tools ready
- **Network Controlled**: Controlled network access for security

### Configuration Management
- **Project Memory**: `CLAUDE.md` serves as project memory and configuration
- **Agent Specialization**: Each agent has tailored instructions and patterns
- **Advanced Prompting**: Techniques from `prompt-engineering.md`

## 📁 Repository Structure

```
.claude/
├── agents/              # Specialized agent definitions
│   ├── architect.md
│   ├── developer.md
│   ├── debugger.md
│   ├── quality-reviewer.md
│   └── technical-writer.md
├── commands/            # Slash command implementations
│   ├── prd.md
│   ├── project-init.md
│   └── plan-execution.md
├── config/              # Environment configurations
├── templates/           # Project type templates
└── prompt-engineering.md # Advanced prompting techniques

.devcontainer/           # Safe containerized development
├── Dockerfile
├── devcontainer.json
└── init-firewall.sh

CLAUDE.md               # Project memory and instructions
```

## 🎯 Usage Modes

### Autonomous Mode (Recommended)
```bash
/plan-execution "Implement user authentication with JWT tokens, password hashing, and rate limiting"
```
Claude Code automatically:
1. Analyzes requirements using architect agent
2. Implements using developer agent with testing
3. Debugs any issues systematically
4. Reviews code quality and security
5. Generates comprehensive documentation

### Manual Agent Mode
```bash
# Use specific agents directly
claude-code --agent architect "Design a caching strategy for high-traffic API"
claude-code --agent developer "Implement Redis caching with connection pooling"
claude-code --agent quality-reviewer "Review caching implementation for security issues"
```

### Command Mode
```bash
/prd          # Interactive requirements gathering
/project-init # Configure for your specific project
```

## 🔧 Project Initialization

When you run `/project-init`, the system:

1. **Analyzes Your Codebase**: Detects languages, frameworks, build tools, testing setup
2. **Updates CLAUDE.md**: Adds project-specific build commands, conventions, patterns
3. **Configures Agents**: Tailors each agent's instructions for your tech stack
4. **Validates Environment**: Ensures linting, testing, and build commands work
5. **Applies Templates**: Uses appropriate templates from `.claude/templates/`

**Important**: After initialization, **delete this README** to avoid confusion - `/project-init` will remind you.

## 🚨 Quality & Security

### Error Handling Standards
- Never ignore errors - always handle appropriately
- Wrap errors with context for debugging
- Use appropriate error types for your stack
- Propagate errors with proper context

### Testing Requirements  
- Integration tests for system behavior
- Unit tests for pure logic functions
- Property-based testing where applicable
- Test with real services when possible
- Cover edge cases and failure scenarios

### Security Boundaries
- Development container runs safely with `dangerously-skip-permissions`
- Firewall rules restrict network access appropriately  
- Non-root user with development-only permissions
- No secrets or credentials committed to repository

## 📚 Advanced Features

### Memory Management
- Project-specific configuration automatically loaded from `CLAUDE.md`
- Agent memory with specialized knowledge patterns
- Context preservation across development sessions

### Workflow Automation
- Extended thinking for complex architectural decisions
- Resume/continue functionality with full context
- Integration with CI/CD and build systems

## 🎬 Example Workflows

**Full-Stack Application:**
```
/plan-execution "Build a React + Node.js todo app with real-time updates, PostgreSQL database, JWT auth, and comprehensive test suite"
```

**API Development:**
```
/plan-execution "Create a RESTful inventory API with OpenAPI docs, input validation, rate limiting, audit logging, and Docker deployment"
```

**Data Pipeline:**
```
/plan-execution "Implement CSV processing pipeline with validation, transformation, multiple output formats, and error handling"
```

## 🙏 Acknowledgments

- **Prompt Engineering Techniques**: Extracted from [Southbridge Research's analysis of Claude Code prompts](https://southbridge-research.notion.site/Prompt-Engineering-The-Art-of-Instructing-AI-2055fec70db181369002dcdea7d9e732)
- **DevContainer Configuration**: Adapted from [Anthropic Claude Code repository](https://github.com/anthropics/claude-code)

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Ready to transform your development workflow?**
1. Open in the dev container
2. Run `claude-code`  
3. Use `/project-init` to configure for your project
4. Start building with autonomous agents!