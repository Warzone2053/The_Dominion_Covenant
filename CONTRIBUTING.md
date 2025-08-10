# Dominion Covenant - Contribution Guidelines

---

## Contribution Policy

The Dominion Covenant is a curated work with a singular voice and vision. We welcome collaboration from those who wish to improve the project's integrity, but all contributions are accepted under the strict understanding that they become part of the project under the owner's copyright.

### Contributor License Agreement

By submitting a pull request, you represent that you have the right to license your contribution, and you agree that your contribution is licensed to the Dominion Covenant project ("the Project") under the following terms:

1.  **Grant of License:** You grant to the Project and its owner a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute your contributions and such derivative works.

2.  **Cession of Rights:** You agree that your contribution becomes an integral part of the Project. You waive any right to claim ownership over the final, combined work or to demand the removal of your contribution from the Project at a later date.

3.  **Moral Rights:** To the extent permitted by law, you waive all moral rights in your contribution.

In short, by contributing, you are gifting your improvements to the Project to be used without restriction, and you agree that the project owner will retain sole and exclusive copyright over the work as a whole.

---

### Git Workflow and Commit Rules

These rules ensure a clean, understandable, and traceable history of the project's development.

---

#### 1. Branching Strategy

*   The `main` branch is the canonical, stable version of the Dominion Covenant. Direct commits to `main` are prohibited.
*   All new work must be done on a separate **feature branch**.
*   Branch names should be descriptive, using a `type/description` format.
    *   *Example:* `feat/add-tribune-powers`
    *   *Example:* `fix/clarify-senate-voting`
    *   *Example:* `docs/update-style-guide`

#### 2. Commit Message Convention

We will use the **Conventional Commits** standard. This creates a clear and machine-readable commit history.

**Format:** `type(scope): subject`

##### Type:
Describes the kind of change.
*   `feat`: A new feature or addition (e.g., adding a new section or article).
*   `fix`: A bug fix or correction of a loophole, typo, or error.
*   `docs`: Changes to documentation files (like this style guide or the `README`).
*   `style`: Formatting changes that do not affect the meaning of the text (e.g., adding spacing or copyright footers).
*   `refactor`: Rewriting or restructuring text without changing its functional meaning.
*   `chore`: Changes to repository maintenance, configuration files, or other tasks that don't modify the core documents.

##### Scope:
The part of the project affected. The standard scopes are:
*   `(dominion)`: Changes to `00. The Dominion Covenant.md`.
*   `(principles)`: Changes to `01. THE CORE IMMUTABLE PRINCIPLES...md`.
*   `(government)`: Changes to `02. The Constitution of Government.md`.
*   `(covenant)`: Changes to `03. The National Covenant.md`.
*   `(legislation)`: Changes to files within the `model_legislation` folder.
*   `(project)`: Project-level changes (e.g., `.gitignore`, style guides).

##### Subject:
A short, imperative summary of the change (e.g., "Add," "Fix," "Clarify," not "Added," "Fixed," "Clarified").

**Full Commit Message Examples:**
*   `feat(government): Add Section 3 to Article IX on Tribune powers`
*   `fix(principles): Clarify wording in Article 1 on Sanctity of Life`
*   `style(covenant): Adjust heading levels for consistency`
*   `feat(legislation): Define general principles in Criminal Law Act`
*   `docs(project): Finalize standard scopes for commit messages`

#### 3. Workflow

1.  Ensure your local `main` branch is up-to-date.
2.  Create a new feature branch from `main`.
3.  Make your changes. Commit your work in small, logical chunks with clear commit messages.
4.  Once the feature is complete, push your branch to the remote repository.
5.  Open a **Pull Request (PR)** to merge your feature branch into `main`. Provide a clear description of the changes in the PR.
6.  After the PR is reviewed and approved, merge it.
7.  Delete the feature branch.