# Profile README QA plan

## Scope

Verify the public profile trigger, core content, navigation, and responsive summary card for the `kilbertert/kilbertert` repository.

The `Profile / verify` workflow enforces the stable content contract without making CI depend on third-party network availability.

## Cases

### QA-01 — Profile trigger

- Environment: GitHub.com production
- Preconditions: repository is public; default branch contains a non-empty root `README.md`
- Test data: `https://github.com/kilbertert`
- Actions:
  1. Open the profile URL without repository write access.
  2. Find the `kilbertert/README.md` profile section.
- Expected: the concise PYYI introduction and selected-work list are visible.
- Cleanup: none

### QA-02 — Public navigation

- Environment: public HTTPS
- Preconditions: profile README is merged
- Test data: website and four selected-project URLs from `README.md`
- Actions:
  1. Request every destination URL.
  2. Confirm each returns an HTTP success response.
- Expected: all destinations are publicly reachable.
- Cleanup: none

### QA-03 — Responsive summary card

- Environment: public HTTPS
- Preconditions: none
- Test data: light- and dark-theme summary card URLs from `README.md`
- Actions:
  1. Request both image URLs.
  2. Confirm each returns an HTTP success response and SVG content type.
- Expected: both cards load; meaningful `alt` text remains if the provider later fails.
- Cleanup: none

## Traceability

| Requirement | Scenario | QA case |
| --- | --- | --- |
| Profile README renders on Overview | A visitor opens the GitHub profile | QA-01 |
| Public links remain navigable | A visitor opens the GitHub profile | QA-02 |
| Core content survives image failure | The summary card service is unavailable | QA-03 |
