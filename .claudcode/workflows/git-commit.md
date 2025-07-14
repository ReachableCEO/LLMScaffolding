# Git Commit Workflow

## Instructions
Follow this workflow when creating git commits:

### Pre-Commit Checks
1. Run `git status` to see all changes
2. Run `git diff` to review staged and unstaged changes
3. Run `git log --oneline -5` to see recent commit style
4. Verify all files are properly formatted and linted

### Commit Message Format
Use conventional commit format:
```
type(scope): description

Longer explanation if needed

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

### Commit Types
- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style/formatting
- **refactor**: Code refactoring
- **test**: Test changes
- **chore**: Maintenance tasks

### Commit Process
1. Stage relevant files: `git add [files]`
2. Create commit with message
3. Verify commit with `git status`
4. Push if required: `git push origin [branch]`

### Example Commands
```bash
# Stage files
git add src/file.js docs/readme.md

# Create commit
git commit -m "$(cat <<'EOF'
feat(auth): add user authentication system

Implement JWT-based authentication with login/logout
Add middleware for protected routes
Include user session management

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>
EOF
)"

# Verify and push
git status && git push origin main
```

### Quality Checks
- [ ] Commit message follows conventional format
- [ ] Changes are logically grouped
- [ ] No sensitive information included
- [ ] All tests pass
- [ ] Documentation updated if needed