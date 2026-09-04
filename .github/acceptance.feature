Feature: GitHub profile README
  The public profile should present a concise and verifiable overview of kilbertert's work.

  Rule: The profile remains useful with or without decorative services

    Scenario: A visitor opens the GitHub profile
      Given the public repository is named "kilbertert"
      And its root contains a non-empty README.md
      When the visitor opens "https://github.com/kilbertert"
      Then the profile displays the concise PYYI introduction
      And the profile links to selected public projects
      And the profile links to "https://pyyi.work/"

    Scenario: The summary card service is unavailable
      Given the profile README contains text descriptions and project links
      When the remote summary card cannot load
      Then the visitor can still read the profile focus
      And the visitor can still navigate to every selected project
