# Claude Code Documentation Worktree Guide

**Date**: 2025-12-16
**Description**: Instructions for Claude Code to handle documentation changes in the FUN-bench worktree setup

## Overview

The FUN-bench project uses a Git worktree setup for documentation management. This allows maintaining a separate branch for documentation changes while keeping the main codebase clean.

## Worktree Structure

```
/Users/frankliu/Library/CloudStorage/Box-Box/Work/fun_bench/     # Main repository
/Users/frankliu/Work/fun_bench_docs/                            # Documentation worktree
```

The worktree maintains the same directory structure as the main repository:
- `docs/` directory exists in both locations
- Changes to documentation should go to the worktree location
- The worktree tracks a separate Git branch for documentation updates

## Claude Code Instructions

### Documentation File Creation
When creating or modifying documentation files:

1. **Always use the worktree location for docs**:
   - **CORRECT**: `/Users/frankliu/Work/fun_bench_docs/docs/filename.md`
   - **WRONG**: `/Users/frankliu/Library/CloudStorage/Box-Box/Work/fun_bench/docs/filename.md`

2. **Preserve directory structure**:
   - Mirror the same subdirectory structure in the worktree
   - Example: If main repo has `docs/analysis/`, use `../fun_bench_docs/docs/analysis/`

### When to Use Worktree vs Main Repo

**Use Worktree (`/Users/frankliu/Work/fun_bench_docs/`) for**:
- Analysis documents
- Implementation plans
- Technical documentation
- Sequence diagrams and class diagrams
- Investigation reports
- Setup guides
- Any `.md` files that document findings or plans

**Use Main Repo (`/Users/frankliu/Library/CloudStorage/Box-Box/Work/fun_bench/`) for**:
- Code changes (`.py`, `.yaml`, `.json`, etc.)
- Configuration files
- Test files
- Runtime files
- The main `README.md` and `CLAUDE.md` (unless specifically requested otherwise)

### Git Operations

The worktree operates independently:
- Changes in worktree don't affect main repo branch
- Commits in worktree go to the documentation branch
- Claude Code should treat the worktree as a separate working directory

### Example Workflow

```bash
# When user requests documentation
# Claude should write to:
/Users/frankliu/Work/fun_bench_docs/docs/new_analysis.md

# Not to:
/Users/frankliu/Library/CloudStorage/Box-Box/Work/fun_bench/docs/new_analysis.md
```

## Implementation Notes

- This setup allows documentation iteration without cluttering the main development branch
- Documentation changes can be reviewed and merged separately from code changes
- Maintains clean separation between implementation and documentation workflows
- Enables parallel work on code and documentation without conflicts

## Usage Pattern

When user says:
- "Save this analysis in a doc" → Use worktree docs directory
- "Create implementation plan" → Use worktree docs directory
- "Document this investigation" → Use worktree docs directory
- "Update the main README" → Use main repo (unless specified otherwise)
- "Modify CLAUDE.md instructions" → Clarify with user which location they want

This worktree setup ensures documentation work doesn't interfere with the main development workflow while maintaining proper version control for both code and documentation changes.