# Comet Carpool Git Workflow

## 1. Purpose

The purpose of this document is to define the Git and GitHub workflow that the Comet Carpool team will use during development.

The `main` branch will remain protected. Team members should make changes on separate branches and submit pull requests before changes are merged into `main`.

---

## 2. Before Starting Work

Before creating a new branch, make sure your local `main` branch is up to date.

```bash
git switch main
git pull
```

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

---

## 8. Pull Request Review

Pull requests must be reviewed before they are merged into `main`.

The reviewer should:

- Review the changed files
- Confirm the changes match the task requirements
- Test the changes when necessary
- Leave comments if corrections are needed
- Confirm review conversations are resolved
- Approve the pull request once the changes are ready

If changes are requested, the developer should make the corrections on the same branch and push the new commits.

The pull request will automatically update with the new commits.

---

## 9. Merge Into Main

Once the pull request has been reviewed and approved, it can be merged into `main`.

The team should use a **merge commit** when merging pull requests.

This allows the individual commits created by each team member to remain visible in the Git history for contribution documentation.

Do not use squash merging unless the team decides to change this workflow later.

---

## 10. After the Pull Request Is Merged

After the pull request is merged, update your local `main` branch before starting another task.

```bash
git switch main
git pull
```

Then create a new branch for the next task.

```bash
git switch -c feature/new-feature
```

The previous feature branch can be deleted after it has been successfully merged.

---

## 11. Keeping Your Branch Updated

If other changes are merged into `main` while you are still working on your branch, you may need to update your branch.

First update your local `main` branch:

```bash
git switch main
git pull
```

Then return to your feature branch:

```bash
git switch feature/your-branch
```

Merge the updated `main` branch into your feature branch:

```bash
git merge main
```

If there are merge conflicts, resolve them before continuing.

After resolving conflicts:

```bash
git add .
git commit -m "Resolved merge conflicts with main"
git push
```

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

Changes to `main` should go through the pull request process.

The branch protection rules are intended to:

- Prevent direct changes to `main`
- Require pull requests before merging
- Require review before merging
- Require review conversations to be resolved
- Prevent force pushes
- Prevent accidental deletion of `main`
- Keep the main branch stable

---

## 15. Team Workflow Summary

The standard development workflow should be:

```text
Update local main
        ↓
Create new branch
        ↓
Make changes
        ↓
Commit changes
        ↓
Push branch to GitHub
        ↓
Create pull request
        ↓
Review and test
        ↓
Resolve review comments
        ↓
Approve pull request
        ↓
Merge into main
        ↓
Update local main
```

---

## 16. Important Rules

- Do not work directly on `main`
- Do not push directly to `main`
- Create a separate branch for each feature, fix, or documentation task
- Keep branch names clear and descriptive
- Use meaningful commit messages
- Push your branch regularly
- Create a pull request before changes are merged
- Resolve review comments before merging
- Test changes before approving a pull request
- Use merge commits so individual contributions remain visible
- Update your local `main` branch before starting new work
