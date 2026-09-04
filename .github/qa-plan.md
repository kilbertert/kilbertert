# Profile README QA plan

## Scope

Verify that the public profile has returned to GitHub's default starter README.

The `Profile / verify` workflow enforces the local starter-template contract.

## Cases

### QA-01 — Profile trigger

- Environment: GitHub.com production
- Preconditions: repository is public; default branch contains a non-empty root `README.md`
- Test data: `https://github.com/kilbertert`
- Actions:
  1. Open the profile URL without repository write access.
  2. Find the `kilbertert/README.md` profile section.
- Expected: the `Hi there` starter heading is visible and the suggestions remain in an HTML comment.
- Cleanup: none

### QA-02 — No external assets

- Environment: public HTTPS
- Preconditions: profile README is merged
- Test data: the merged `README.md`
- Actions:
-  1. Inspect the rendered profile and README source.
  2. Confirm no external image URL appears in the source.
- Expected: the profile uses no third-party image, badge, animation, or statistics service.
- Cleanup: none

### QA-03 — Default source match

- Environment: Git repository
- Preconditions: none
- Test data: `970edd0:README.md`
- Actions:
-  1. Compare the current README with the initial repository README.
- Expected: the content matches GitHub's generated starter template.
- Cleanup: none

## Traceability

| Requirement | Scenario | QA case |
| --- | --- | --- |
| Profile README renders on Overview | A visitor opens the GitHub profile | QA-01 |
| No third-party assets are required | The default README has no external assets | QA-02 |
| Default starter content is restored | The default source match | QA-03 |
