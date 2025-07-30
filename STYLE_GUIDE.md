# Dominion Covenant - Markdown Style Guide

This guide ensures that all constituent charters of the Dominion Covenant are formatted consistently, making them easy to read, navigate, and maintain.

---

### 1. File Naming Convention

Files shall be named using a two-digit number for ordering, followed by a period, a space, and the title of the document in Title Case. Any all-caps titles in the original files will be preserved.

*   `00. The Dominion Covenant.md`
*   `01. THE CORE IMMUTABLE PRINCIPLES OF THE CONSTITUTION OF CANADA.md`
*   `02. The Constitution of Government.md`
*   `03. The National Covenant.md`

### 2. Document Structure and Headings

*   **H1 (`#`):** The main title of the document. Used only once at the top of the file.
*   **H3 (`###`):** Major top-level sections like `PREAMBLE`, `ARTICLE I: ...`, `DECLARATION OF ...`.
*   **H4 (`####`):** Sub-sections within an Article, like `Section 1: ...`.
*   **Horizontal Rules (`---`):** Used to create a distinct visual separation between the main title, preamble, and the articles.

### 3. Text Emphasis

*   **Bold (`**text**`):** Used exclusively to highlight key constitutional terms, thresholds, roles, principles, or **internal cross-references** that have a specific, defined meaning within the text. This draws the reader's attention to legally significant concepts.
    *   *Example:* `...requires a **three-quarters supermajority vote**...`
    *   *Example:* `...as defined in **Article 10 of the Charter**.`
*   **Italics (`*text*`):** Used sparingly for simple emphasis on a particular word or for quoted phrases that are being set apart from the main sentence.
    *   *Example:* `The court is prohibited from *"discovering"* new rights.`

### 4. Lists and Clause Numbering

A consistent, nested hierarchy shall be used for all articles and clauses:

*   **Level 1 (Section Clauses):** Numbered list. `1.`
*   **Level 2 (Sub-clauses):** Lowercase letter in parentheses. `(a)`
*   **Level 3 (Sub-sub-clauses):** Lowercase Roman numeral in parentheses. `(i)`

    *Example:*
    ```markdown
    1.  This is the first clause.
        (a) This is the first sub-clause.
            (i) This is a sub-sub-clause.
        (b) This is the second sub-clause.
    2.  This is the second clause.
    ```

### 5. Blockquotes

*   **Blockquote (`>`):** Used exclusively for verbatim text that is set apart from the main body, such as an **Oath of Office** or a direct quote.

### 6. Links

*   **Internal Links:** This project avoids using standard Markdown hyperlinks for internal cross-references to ensure source-code readability and prevent broken links. See **Section 7** for the correct standard.

### 7. Internal Cross-References

To ensure readability and prevent broken links, internal cross-references to other articles or charters shall not be hyperlinked. Instead, the reference shall be made **bold** to signify its legal importance and draw the reader's attention to the connection.

*   **Correct:** `...as defined in **Article 10 of the Charter of Immutable Principles**.`
*   **Incorrect:** `...as defined in [Article 10 of the Charter...](...)`
*   **Incorrect:** `...as defined in Article 10 of the Charter...`