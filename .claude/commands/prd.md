# Product Requirements Document (PRD) Command

Interactive requirements gathering and refinement for autonomous development projects. You have complete access to analyze existing codebases and can confidently guide users through requirements definition.

## Purpose

This command helps users define, refine, and document project requirements before beginning autonomous development. It creates or updates a PROJECT-REQUIREMENTS.md file that serves as the foundation for architectural design and implementation.

## Command Usage

When you run `/prd`, I will confidently:

1. **Analyze Current State**
   - Check if PROJECT-REQUIREMENTS.md already exists
   - Analyze existing codebase (if any) to understand current project
   - Identify what requirements information is missing

2. **Interactive Requirements Gathering**
   - Ask clarifying questions about project goals
   - Help structure requirements into clear, actionable specifications
   - Identify technical and non-functional requirements
   - Clarify constraints, timelines, and success criteria

3. **Process Existing Documentation**
   - If you have existing PRD documents, I can analyze and refine them
   - Accept pasted requirements documents for processing
   - Help translate business requirements into technical specifications

4. **Create Structured Requirements**
   - Generate or update PROJECT-REQUIREMENTS.md
   - Organize requirements by priority and complexity
   - Include technical specifications and constraints
   - Add acceptance criteria for each feature

## Interaction Modes

### New Project Requirements
For new projects, I'll guide you through:
- Project overview and objectives
- Core features and functionality
- Technical preferences and constraints
- Quality requirements (performance, security, etc.)

### Existing Document Processing
If you have existing requirements:
- Paste your PRD or requirements document
- Tell me where to find requirements files
- I'll analyze, structure, and ask clarifying questions

### Existing Project Enhancement
For existing projects:
- Analyze current codebase to understand implemented features
- Help define requirements for new features or improvements
- Update PROJECT-REQUIREMENTS.md with additional requirements

## Requirements Document Structure

The generated PROJECT-REQUIREMENTS.md will include:

```markdown
# Project Requirements

## Project Overview
- Purpose and objectives
- Target users
- Success criteria

## Core Features
- Feature 1: Description and acceptance criteria
- Feature 2: Description and acceptance criteria
- [Additional features...]

## Technical Requirements
- Technology stack preferences
- Performance requirements
- Security requirements
- Compatibility requirements

## Constraints
- Timeline considerations
- Resource limitations
- Technical constraints

## Quality Standards
- Testing requirements
- Documentation requirements
- Code quality standards
```

## Next Steps

After completing the PRD:
1. Run `/project-init` to configure the development environment
2. Begin autonomous development with clear requirements
3. Use requirements as input for architectural design and implementation planning