# Memory Management Strategy

## Current Approach

### CLAUDE.md Structure
```markdown
# Static sections (never grow)
- Agent imports (@agents/*.md)  
- Template imports (@templates/*.md)
- Command imports (@commands/*.md)

# Dynamic sections (managed size)
## Project-Specific Configuration
- Technology stack (replaced on /init)
- Build commands (replaced on /init)  
- Conventions (replaced on /init)

## Session Memory (temporary)
- Current task context
- Active agent state
- Recent decisions
```

### Size Management
1. **Imports over Inline**: Reference external files rather than copying content
2. **Replacement over Append**: Update sections rather than add new ones
3. **Structured Data**: JSON configs for complex settings
4. **Cleanup Commands**: `/memory-cleanup` to remove stale sections

## Git Worktree Support (Future)

### Worktree-Aware Memory
```bash
# Detect worktree context
if git worktree list --porcelain | grep "$(pwd)"; then
    WORKTREE_BRANCH=$(git branch --show-current)
    CLAUDE_MD_SECTION="## Worktree: ${WORKTREE_BRANCH}"
fi
```

### Branch-Specific Configuration
```markdown
## Worktree: feature/user-auth
### Temporary Overrides
- Testing: Focus on auth-related tests only
- Quality Gates: Skip performance tests for this branch
- Agent Focus: Security-first development

## Worktree: main  
### Production Configuration
- All quality gates enabled
- Full test suite required
- Documentation generation enabled
```

## Agent Memory Efficiency

### Context Passing Pattern
```json
{
  "handoff": {
    "from_agent": "architect",
    "to_agent": "developer", 
    "context": {
      "decisions": ["Use JWT for auth", "PostgreSQL for persistence"],
      "constraints": ["<80ms API response", "Zero dependencies"],
      "focus_areas": ["src/auth/", "src/api/"]
    },
    "deliverables": {
      "architecture_doc": "docs/architecture.md",
      "api_spec": "openapi.yaml"
    }
  }
}
```

### Stateless Agent Design
- Each agent gets minimal context needed for their task
- No need to store full conversation history
- Previous agent outputs become next agent's inputs

## Memory Cleanup Strategies

### Automatic Cleanup
```markdown
### Session Cleanup (after task completion)
- Remove temporary context sections
- Archive completed task details
- Reset agent states

### Periodic Cleanup (weekly)
- Remove outdated technology configurations
- Clean up unused template sections
- Compress old decision logs
```

### Manual Cleanup Commands
```bash
/memory-clean --stale    # Remove sections older than 30 days
/memory-clean --worktree # Clean up merged worktree configs
/memory-clean --agents   # Reset agent context
```

## Scalability Considerations

### Large Projects
- **Modular CLAUDE.md**: Split into multiple files if needed
- **Service-Specific Memory**: Microservice gets its own memory
- **Shared Common Memory**: Team-level patterns shared across services

### Team Collaboration
- **Shared Team Memory**: Common patterns at team level
- **Individual Overrides**: Personal preferences don't pollute team memory
- **Project Inheritance**: New projects inherit team defaults

## Implementation Priority
1. **Phase 1**: Current hierarchical system with imports
2. **Phase 2**: Git worktree awareness and branch-specific configs  
3. **Phase 3**: Advanced memory cleanup and compression
4. **Phase 4**: Distributed memory for large teams/projects