# Comet Carpool Git Workflow

## 1. Purpose

The purpose of this document is to define the Git and GitHub workflow that the Comet Carpool team will use during development.

The `main` branch will remain protected.

Team members must:

- Start from the latest version of `main`
- Create their own branch for assigned work
- Make and commit changes on that branch
- Push the branch to GitHub
- Create a pull request into `main`

The Project Manager will review and merge pull requests into `main`.

---

## 2. Before Starting Work

Before creating a new branch, make sure your local `main` branch is up to date.

```bash
git switch main
git pull
```

This ensures that the new branch is created from the latest version of the project.

---

## 3. Create a New Branch

Create a new branch for the task you are working on.

```bash
git switch -c feature/short-description
```

Example branch names:

```text
feature/login
feature/create-ride
feature/ride-search
feature/messaging
bugfix/login-validation
docs/p2-update
```

Each branch should focus on one feature, fix, or documentation task.

Do not perform project work directly on `main`.

---

## 4. Make Changes

Make the required code or documentation changes on your branch.

You can check which files have been changed by running:

```bash
git status
```

---

## 5. Commit Changes

Stage the files you want to include in the commit.

```bash
git add .
```

Then create a commit with a clear message describing the work completed.

```bash
git commit -m "Added ride search functionality"
```

Team members should make meaningful commits so individual contributions can be clearly documented in the Git history.

---

## 6. Push the Branch

Push the branch to GitHub.

```bash
git push -u origin feature/short-description
```

After the first push, future changes to the same branch can usually be pushed with:

```bash
git push
```

---

## 7. Create a Pull Request

After the branch has been pushed to GitHub:

1. Open the Comet Carpool repository.
2. Select the branch that was pushed.
3. Click **Compare & pull request**.
4. Confirm that the pull request is merging into `main`.

Example:

```text
feature/your-branch → main
```

5. Add a clear pull request title.
6. Add a short description explaining what was changed.
7. Submit the pull request.

Team members may create pull requests, but they should not merge their own pull requests.

---

## 8. Pull Request Review

Pull requests must be reviewed before they are merged into `main`.

The Project Manager is responsible for reviewing pull requests.

The Project Manager should:

- Review the changed files
- Confirm the changes match the assigned task
- Test the changes when necessary
- Leave comments if corrections are needed
- Confirm review conversations are resolved
- Approve the pull request once the changes are ready
- Merge the pull request into `main`

If changes are requested, the developer should make the corrections on the same branch and push the new commits.

The pull request will automatically update with the new commits.

Team members should not merge their own pull requests.

---

## 9. Merge Into Main

Once the pull request has been reviewed and approved by the Project Manager, the Project Manager will merge it into `main`.

The team should use a **merge commit** when merging pull requests.

This allows the individual commits created by each team member to remain visible in the Git history for contribution documentation.

Do not use squash merging unless the team decides to change this workflow later.

---

## 10. After the Pull Request Is Merged

After the pull request is merged, the completed branch can be deleted from GitHub.

Deleting a merged branch does not remove the commits from `main`.

The contributor's:

- Commit history
- Commit messages
- Authorship
- Contribution history

will remain available after the branch is deleted.

Before starting another task, update your local `main` branch:

```bash
git switch main
git pull
```

Then create a new branch for the next task:

```bash
git switch -c feature/new-feature
```

---

## 11. Keeping Your Branch Updated

If other changes are merged into `main` while you are still working on your branch, update your local `main` branch first.

```bash
git switch main
git pull
```

Then return to your working branch:

```bash
git switch feature/your-branch
```

Rebase your branch onto the updated `main` branch:

```bash
git rebase main
```

If there are merge conflicts, Git will stop and allow you to resolve them.

After fixing the conflicts, stage the resolved files:

```bash
git add .
```

Then continue the rebase:

```bash
git rebase --continue
```

Once the rebase is complete, push the updated branch.

If the branch had already been pushed before the rebase, use:

```bash
git push --force-with-lease
```

Do not use a regular `--force` push.

---

## 12. Branch Naming Guidelines

Use clear branch names that describe the work being completed.

Recommended prefixes:

| Prefix | Purpose |
|---|---|
| `feature/` | New application feature |
| `bugfix/` | Bug or error correction |
| `docs/` | Documentation changes |
| `refactor/` | Code restructuring without changing functionality |
| `test/` | Testing-related changes |

Examples:

```text
feature/user-login
feature/post-ride
feature/ride-search
feature/messaging
bugfix/login-validation
docs/update-p2
refactor/ride-service
test/ride-controller
```

---

## 13. Commit Message Guidelines

Commit messages should clearly explain what was changed.

Good examples:

```text
Added login form
Added ride creation endpoint
Fixed ride search filter
Updated P2 technology stack documentation
Added user authentication tests
```

Avoid unclear commit messages such as:

```text
update
changes
fixed stuff
work
test
```

Clear commit messages make it easier to review project history and document individual contributions.

---

## 14. Main Branch Protection

The `main` branch is protected to reduce the risk of incomplete or broken changes being added directly to the main project.

All changes to `main`, including documentation changes, should go through the pull request process.

The branch protection rules are intended to:

- Prevent direct changes to `main`
- Require pull requests before merging
- Require review before merging
- Require review conversations to be resolved
- Prevent force pushes to `main`
- Prevent accidental deletion of `main`
- Keep the main branch stable

The Project Manager is responsible for approving and merging pull requests into `main`.

---

## 15. Team Workflow Summary

The standard development workflow should be:

```text
Pull latest main
        ↓
Create a new branch from main
        ↓
Make changes
        ↓
Commit changes
        ↓
Push branch to GitHub
        ↓
Create pull request into main
        ↓
Project Manager reviews
        ↓
Resolve requested changes if needed
        ↓
Project Manager approves
        ↓
Project Manager merges into main
        ↓
Delete merged branch
        ↓
Pull latest main before next task
```

---

## 16. Important Rules

- Do not work directly on `main`
- Do not push directly to `main`
- Always pull the latest version of `main` before creating a new branch
- Create a separate branch for each feature, fix, or documentation task
- Keep branch names clear and descriptive
- Use meaningful commit messages
- Push your branch regularly
- All changes, including documentation changes, must use a pull request
- Team members may create pull requests
- Team members should not merge their own pull requests
- The Project Manager reviews and merges pull requests into `main`
- Resolve review comments before merging
- Test changes before approving a pull request
- Use merge commits so individual contributions remain visible
- Do not squash commits unless the team decides to change the workflow
- Delete completed branches after they have been successfully merged
- Deleting a merged branch does not remove contributor commit history
- Update your local `main` branch before starting new work