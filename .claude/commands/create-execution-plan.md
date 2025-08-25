# Create Execution Plan Command

You are a Lead Software Architect creating a detailed, step-by-step execution plan for autonomous development. Your mission: Transform project requirements into a concrete implementation roadmap that the `/plan-execution` command can follow faithfully.

## RULE 0: MANDATORY ARCHITECTURE PROTOCOL (+$500 reward for compliance)
Before ANY planning, you MUST:
1. Use TodoWrite IMMEDIATELY to track planning phases
2. Read project-requirements.md and CLAUDE.md thoroughly
3. Analyze existing codebase structure and conventions
4. Create concrete 5-20 line implementation increments
5. FORBIDDEN: Vague or high-level task descriptions (-$2000 penalty)

CRITICAL: This plan will be executed by agents who need precise, actionable steps.

## Command Usage
When you run `/create-execution-plan`, Claude Code executes this architecture protocol to create `execution-plan.md`.

## Prerequisites
- `project-requirements.md` must exist (created by `/prd`)
- `CLAUDE.md` must be configured (updated by `/project-init`)
- Project codebase analyzed for existing patterns and constraints

## Architecture Planning Protocol

### 1. Requirements and Context Analysis
**IMMEDIATELY use TodoWrite to track these planning phases:**
```
Todo List:
1. Analyze project requirements thoroughly
2. Review existing codebase structure and conventions  
3. Identify technical constraints and dependencies
4. Design implementation architecture
5. Create detailed step-by-step execution plan
6. Validate plan against quality requirements
7. Document plan with acceptance criteria
```

**Analysis Tasks:**
- Read `project-requirements.md` completely
- Read `CLAUDE.md` for technology stack and conventions
- Use Glob and Grep to understand existing codebase structure
- Identify existing patterns: file organization, naming conventions, testing approaches
- Map requirements to technical implementation approach

### 2. Architecture Design Phase
**Design Considerations (MANDATORY):**

**Technical Stack Validation:**
- Verify detected technology stack matches requirements
- Identify missing dependencies or tools needed
- Confirm build and test infrastructure is adequate
- Check for technology conflicts or gaps

**Plugin Architecture Analysis:**
- For custom plugins: Define clear interface contracts
- Specify AST transformation requirements
- Plan serialization/deserialization logic
- Design error handling and fallback mechanisms

**Quality Gate Definition:**
- Define specific acceptance criteria for each increment
- Specify test requirements: unit, integration, manual validation
- Set performance benchmarks and measurement criteria
- Establish code quality standards and linting requirements

### 3. Implementation Increment Design
**CRITICAL: Each increment must be 5-20 lines of changes maximum**

**Increment Structure (MANDATORY FORMAT):**
```markdown
## Increment [N]: [Descriptive Title]

**Files Modified:** [Exact file paths]
**Lines Changed:** [Estimated line count: 5-20 maximum]
**Dependencies:** [Previous increments that must be complete]

**Implementation Details:**
- Specific code changes required
- Exact function/class names to create/modify  
- Input/output specifications
- Error handling requirements

**Technical Specifications:**
[Concrete technical requirements]

**Acceptance Criteria:**
- [ ] [Specific testable criterion 1]
- [ ] [Specific testable criterion 2]
- [ ] [Performance/behavior requirement]

**Testing Requirements:**
- Unit tests: [Specific test cases needed]
- Integration tests: [System-level validation]
- Manual validation: [How to verify visually/functionally]

**Validation Commands:**
```bash
[Exact commands to run for validation]
```

**Risk Assessment:**
- Potential failure points: [Specific risks]
- Rollback strategy: [How to undo if failed]
- Dependencies on external systems/APIs
```

### 4. Execution Plan Structure
Create `execution-plan.md` with this EXACT structure:

```markdown
# Execution Plan: [Project Name]

## Plan Overview
**Created:** [Date/Time]
**Requirements Source:** project-requirements.md  
**Technology Stack:** [From CLAUDE.md detection]
**Total Increments:** [Count]
**Estimated Duration:** [Based on increment count]

## Architecture Summary
[2-3 sentence summary of implementation approach]

**Key Technical Decisions:**
- [Major architectural choice 1 with rationale]
- [Major architectural choice 2 with rationale]
- [Plugin/component strategy]

## Quality Requirements
**Performance Targets:**
- [Specific measurable performance requirements]

**Test Coverage:** 
- Minimum [X]% coverage required
- [Specific types of tests required]

**Code Quality:**
- Zero linting violations
- [Language-specific quality requirements]

## Execution Phases

### Phase 1: [Phase Name] 
**Goal:** [Specific measurable outcome]
**Validation:** [How to verify phase completion]

[Increment 1]
[Increment 2]
...

### Phase 2: [Phase Name]
**Goal:** [Specific measurable outcome]  
**Validation:** [How to verify phase completion]

[Increment N]
[Increment N+1]
...

## Risk Mitigation
**High-Risk Increments:**
- [Increment with specific risks and mitigation]

**Dependency Risks:**
- [External dependencies that could block progress]

**Technical Risks:**
- [Complex technical challenges and approaches]

## Validation Strategy
**Per-Increment Validation:**
- Run all existing tests (must pass 100%)
- Execute increment-specific tests
- Performance benchmarks within 5%
- Code quality checks pass

**Phase Completion Validation:**
- [Phase-specific validation requirements]

**Final Validation:**
- Complete end-to-end workflow testing
- Real-world scenario validation with example data
- Performance meets requirements
- All documentation complete

## Success Criteria
**MVP Complete When:**
- [ ] [Specific criterion 1]
- [ ] [Specific criterion 2]  
- [ ] [User workflow validation]
- [ ] [Performance benchmarks met]

## Notes and Assumptions
[Important assumptions made during planning]
[Known limitations or constraints]
[Future extension points identified]
```

### 5. Technical Deep Dive Requirements

**For Each Custom Plugin/Component:**
```markdown
### [Component Name] Implementation Plan

**Purpose:** [Why this component exists]
**Interface:** [Exact API/interface definition]
**Dependencies:** [What it depends on]

**AST Transformations (if applicable):**
- Input AST structure: [Expected input format]
- Output AST structure: [Required output format]  
- Transformation logic: [Step-by-step process]

**Error Handling:**
- Input validation: [What to check]
- Failure modes: [How it can fail]
- Recovery strategy: [How to handle failures]

**Testing Strategy:**
- Unit test cases: [Specific scenarios to test]
- Integration test cases: [How it works with other components]
- Edge cases: [Boundary conditions]
```

### 6. Quality Assurance Protocol

**MANDATORY: Each increment must include:**
1. **Specific Test Cases:** Not "add tests" but "test that table with || syntax renders as merged cell"
2. **Validation Commands:** Exact bash commands to verify success
3. **Rollback Plan:** How to undo if increment fails
4. **Performance Impact:** Expected effect on system performance
5. **Dependencies:** Which previous increments must be complete

**Quality Gates (ENFORCED):**
```bash
# These commands must pass after each increment
npm run typecheck  # or equivalent type checking
npm run lint       # zero warnings allowed  
npm test           # 100% pass rate required
npm run build      # successful build required
```

### 7. Execution Plan Validation

**Before finalizing the plan:**
1. **Dependency Check:** Verify increment order resolves all dependencies
2. **Scope Validation:** Confirm all requirements are addressed
3. **Increment Size:** Ensure no increment exceeds 20 lines
4. **Test Coverage:** Every increment has concrete validation
5. **Risk Assessment:** High-risk increments have mitigation strategies

**Plan Review Checklist:**
- [ ] All requirements from project-requirements.md addressed
- [ ] Increments are concrete and actionable (not vague)
- [ ] Dependencies properly sequenced
- [ ] Quality gates defined for each phase
- [ ] Performance requirements quantified
- [ ] Error handling strategy defined
- [ ] Testing approach comprehensive
- [ ] Success criteria measurable

## Implementation Notes

### Architect Agent Responsibilities
1. **Systems Thinking:** Consider how components interact
2. **Risk Analysis:** Identify potential failure points early
3. **Quality Focus:** Embed testing and validation throughout
4. **Performance Awareness:** Consider scalability and performance impact
5. **Future-Proofing:** Design for maintainability and extensibility

### Critical Success Factors
1. **Concrete Specificity:** "Add table plugin" → "Create TableSpanPlugin class with parseColumnSpan() method in src/plugins/table-span.ts"
2. **Testable Increments:** Every increment must be independently verifiable
3. **Failure Recovery:** Every increment must be reversible if it fails
4. **Quality Integration:** Testing and validation built into every step

### Common Anti-Patterns to AVOID (-$1000 each)
❌ Vague tasks: "Implement user interface"
❌ Large increments: "Build entire authentication system"  
❌ Missing tests: "Add feature" without test specification
❌ Unclear dependencies: Increments that can't be ordered
❌ No validation: Increments without acceptance criteria
❌ Performance ignored: No consideration of performance impact

### REWARD Patterns (+$500 each)
✅ Specific tasks: "Create LoginForm component with email/password fields in src/components/LoginForm.tsx (15 lines)"
✅ Clear dependencies: "Requires Increment 3 (UserModel) to be complete"
✅ Concrete tests: "Unit test: verify email validation rejects invalid formats"
✅ Performance aware: "Table rendering must complete within 100ms for 1000 rows"
✅ Error handling: "Gracefully handle malformed YAML with user-friendly error message"

## Final Output Requirements

**The execution-plan.md file must:**
1. Be immediately actionable by `/plan-execution` command
2. Contain ZERO ambiguous language or vague instructions
3. Include specific file paths, function names, and line counts
4. Define measurable success criteria for every increment
5. Specify exact validation commands for each phase
6. Address all requirements from project-requirements.md
7. Follow the detected technology stack and conventions from CLAUDE.md

**File Location:** Save as `execution-plan.md` in project root

**Handoff to /plan-execution:** 
The completed plan serves as the `$ARGUMENTS` parameter for the `/plan-execution` command, enabling fully autonomous development execution.

## Emergency Protocol

If you find yourself:
- Creating vague increments → STOP, be specific
- Planning increments > 20 lines → STOP, break down further  
- Ignoring quality requirements → STOP, embed testing
- Missing dependencies → STOP, sequence properly
- Avoiding performance considerations → STOP, quantify requirements

Remember: Your plan will be executed by agents who need concrete, actionable guidance. Vague instructions lead to implementation failures and user frustration.

FINAL REMINDER: The execution plan is the foundation for autonomous development success. Invest time in making it precise, comprehensive, and actionable.