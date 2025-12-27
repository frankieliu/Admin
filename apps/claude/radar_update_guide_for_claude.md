# Radar Update Guide for Claude

## Overview
This guide provides step-by-step instructions for successfully updating Radar problems, based on common failure patterns and their solutions.

## Step-by-Step Process

### 1. Get Current Radar Information
Always start by retrieving the current radar details to understand its current state:

```
mcp__radar-mcp-server__getProblemByIds
- problemIds: [RADAR_NUMBER]
```

**Key fields to note:**
- `state`: Current state (e.g., "Analyze", "New Problem", etc.)
- `resolution`: Current resolution (e.g., "Unresolved")
- `title`, `assignee`, `component`: For context

### 2. Understand State Transition Rules

**Critical Rule:** When changing state FROM "Analyze", you MUST provide a resolution.

**Common Error:**
```json
{
  "state": "Verify"
  // Missing resolution field - will fail!
}
```

**Correct Approach:**
```json
{
  "state": "Verify",
  "resolution": "Software Changed"  // Required when transitioning from Analyze
}
```

### 3. Use Valid Enum Values

Before setting any enum field (state, resolution, priority, etc.), ensure you're using valid values.

**If you encounter "Enum field not valid" errors:**

1. Look up valid enum values:
```
mcp__radar-mcp-server__getResourceFile
- resource: "rule://problem_enum_values.md"
```

2. Find the correct section for your field and use exact values from the list.

### 4. Common Valid Values (Quick Reference)

**State Values:**
- "New Problem"
- "Analyze"
- "Integrate"
- "Build"
- "Verify"
- "Closed"

**Resolution Values:**
- "Unresolved"
- "Software Changed" ← Most common for completed implementation work
- "Documentation Changed"
- "Hardware Changed"
- "Configuration Changed"
- "Feature Removed"
- "Duplicate"
- "Cannot Reproduce"
- "Behaves Correctly"
- "Not To Be Fixed"
- "3rd Party To Resolve"
- "Firmware Changed"
- "Vendor Disqualified"
- "Process Changed"
- "Insufficient Information"
- "Item Completed"
- "Not Applicable"
- "Data Changed"

**Priority Values:**
- "1" (highest)
- "2"
- "3"
- "4"
- "5"
- "6" (lowest)

### 5. Recommended Update Pattern for Completed Work

For implementation work that has been completed and tested:

```json
{
  "state": "Verify",
  "resolution": "Software Changed",
  "diagnosis": "[Detailed implementation information here]"
}
```

**Why these values:**
- **"Verify"**: Indicates work is complete and ready for verification/review
- **"Software Changed"**: Indicates the resolution involved code changes
- **"diagnosis"**: Provides detailed technical information about what was implemented

### 6. Error Handling

**Error: "Problem State changing from analyze requires resolution"**
- **Solution**: Add a `resolution` field with a valid enum value

**Error: "Enum field: [field] not valid"**
- **Solution**: Look up valid values using `getResourceFile` and use exact string match

**Error: "Bad Request" with validation errors**
- **Solution**: Check that all required fields are provided and enum values are valid

### 7. Example Successful Update

```json
{
  "state": "Verify",
  "resolution": "Software Changed",
  "diagnosis": "# Implementation Complete\n\n## Summary\n[Implementation details]\n\n## Changes Made\n[List of changes]\n\n## Test Results\n[Test outcomes]\n\n## Files Modified\n[File list]"
}
```

## Common Scenarios

### Scenario 1: Marking Implementation Complete
```json
{
  "state": "Verify",
  "resolution": "Software Changed",
  "diagnosis": "[Implementation details]"
}
```

### Scenario 2: Marking as Duplicate
```json
{
  "state": "Closed",
  "resolution": "Duplicate",
  "diagnosis": "Duplicate of radar [NUMBER]. [Brief explanation]"
}
```

### Scenario 3: Unable to Reproduce
```json
{
  "state": "Closed",
  "resolution": "Cannot Reproduce",
  "diagnosis": "Unable to reproduce the issue. [Details of attempts made]"
}
```

### Scenario 4: Enhancement Complete
```json
{
  "state": "Verify",
  "resolution": "Software Changed",
  "diagnosis": "Enhancement implemented. [Details]"
}
```

## Best Practices

### 1. Always Include Diagnosis for Significant Updates
Provide detailed information about:
- What was implemented
- How it was tested
- Files that were changed
- Impact assessment
- Verification steps

### 2. Use Markdown in Diagnosis Field
The diagnosis field supports Markdown formatting:
```markdown
# Main Heading
## Subheading
- Bullet points
- **Bold text**
- `code snippets`
```

### 3. State Progression Logic
Typical progression:
1. "New Problem" → Investigation begins
2. "Analyze" → Understanding/planning phase
3. "Integrate"/"Build" → Implementation phase
4. "Verify" → Testing/review phase
5. "Closed" → Final state after verification

### 4. Resolution Selection Guide
- **"Software Changed"**: Code/implementation changes
- **"Documentation Changed"**: Doc updates only
- **"Configuration Changed"**: Settings/config changes
- **"Item Completed"**: Task/feature completed
- **"Duplicate"**: Duplicate of another radar
- **"Cannot Reproduce"**: Unable to replicate issue
- **"Behaves Correctly"**: Working as intended
- **"Not To Be Fixed"**: Intentionally not fixing

## Troubleshooting Checklist

Before updating a radar, verify:
- [ ] Current state allows the transition you're requesting
- [ ] If transitioning from "Analyze", resolution is provided
- [ ] All enum values are exactly as listed in problem_enum_values.md
- [ ] Required fields for the specific state are included
- [ ] Diagnosis provides sufficient detail for the type of update

## Quick Command Reference

```bash
# Get radar details
mcp__radar-mcp-server__getProblemByIds
problemIds: [RADAR_NUMBER]

# Get valid enum values
mcp__radar-mcp-server__getResourceFile
resource: "rule://problem_enum_values.md"

# Update radar
mcp__radar-mcp-server__updateProblem
problemId: RADAR_NUMBER
updateRequestJson: "{...}"
```

This guide should enable successful radar updates without trial and error by following the established patterns and requirements.