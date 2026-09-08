# Collections reference assets

These authored synthetic assets supply the Collections demonstration's account facts, interaction history, executable settlement limits and explanatory policy. They are prepared locally. **They have not been published to GitHub in this session.**

## Intended publication location

Repository: [PavanKumarch-123/collections-Agent](https://github.com/PavanKumarch-123/collections-Agent)

Branch: `main`

Upload the following files from this directory to the **repository root**, preserving their names:

| File | Use |
| --- | --- |
| `borrower_ledger.sql` | Borrower account facts, contact settings and editable request examples |
| `interaction_logs.sql` | Prior contacts, promises and disputes |
| `settlement_matrix.sql` | Delinquency bands, delegated concession caps, default actions and policy version |
| `Collections_Policy_COL-POL-2026-v1.0.pdf` | Policy document consumed through `POLICY_DOC_URL` |
| `Collections_Policy_COL-POL-2026-v1.0.md` | Editable source for the PDF; optional text-document input |

An authorized repository owner can use GitHub's **Add file → Upload files** on `main`, add these assets and commit the upload. No GitHub credential was available to perform publication from this workspace. Application `.env`, credentials and operational database files are not reference assets.

After publication, configure:

```dotenv
SQL_BASE_URL=https://raw.githubusercontent.com/PavanKumarch-123/collections-Agent/refs/heads/main
POLICY_DOC_URL=https://raw.githubusercontent.com/PavanKumarch-123/collections-Agent/refs/heads/main/Collections_Policy_COL-POL-2026-v1.0.pdf
```

These are intended production URLs, not a claim that the files are already available. Verify all three SQL files and the policy PDF return the expected content from the application host before selecting these URLs for processing. A missing or invalid source stops initialization/processing; no bundled-data fallback is selected automatically.

## Explicit file sources

For the built image, which includes these prepared assets:

```dotenv
SQL_BASE_URL=file:///app/data/reference
POLICY_DOC_URL=file:///app/data/reference/Collections_Policy_COL-POL-2026-v1.0.pdf
```

For checkout development, replace `/app/data/reference` with the absolute directory path in that checkout. For a separate container mount, use the absolute **container** path. The Markdown policy can be selected explicitly instead of the PDF by changing only `POLICY_DOC_URL`.

The same application can use these explicit file sources for a reference-data check and later use HTTP(S) sources without embedding machine paths in Python or browser code. Shared ASAP service endpoints still come from the application environment.

## Version and data integrity

The SQL settlement policy version and document `Policy ID` must both be `COL-POL-2026-v1.0` for this asset set. The policy must retain the required numbered sections. Update the structured policy and document together when changing authority; changes to terms under an existing version are rejected.

The loader validates all SQL in an isolated database before importing records. It does not execute downloaded SQL against the operational ledger. Existing balances, histories and opening baselines are preserved; new borrower IDs can be imported. Changing the configured source does not require erasing the operational database. Validate a new source/version against existing cases before switching deployment configuration.

Final results expose configured source URLs, content hashes, load time, policy version and selected clauses. File sources appear as text references in the UI; only configured safe HTTP(S) sources become links. A source link or proposed request never grants financial authority.
