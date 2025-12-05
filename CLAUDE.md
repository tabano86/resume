# CLAUDE.md - Resume Repository Context

This file provides context for AI assistants (Claude, etc.) working on this resume repository.

## Repository Purpose

LaTeX-based resume for **Anthony Tabano**, a Staff-caliber Software Engineer targeting Senior/Staff roles at FAANG or FAANG-adjacent companies.

## Build Commands

```powershell
# Windows (PowerShell)
.\build.ps1              # Build PDF
.\build.ps1 -Open        # Build and open PDF
.\build.ps1 -Clean       # Remove build artifacts
```

```bash
# macOS/Linux
make                     # Build PDF
make open                # Build and open PDF
make clean               # Remove build artifacts
make watch               # Auto-rebuild on changes
```

**Output:** `out/Anthony_Tabano_resume_YYYY-MM-DD.pdf`

**Requires:** LuaLaTeX (via MiKTeX or TeX Live)

## File Structure

```
resume.tex       # LaTeX template (formatting, macros, packages)
content.tex      # Resume content (edit this for content changes)
build.ps1        # Windows build script
Makefile         # Unix build script
archive/         # Historical resumes (2014-2025) for reference
out/             # Build output (gitignored)
```

## Career Timeline (Verified from Archives)

| Dates | Company | Title | Key Facts |
|-------|---------|-------|-----------|
| Jan 2022 – Present | Wipro/buildit → Optum | Sr. Engineer & Manager | Dual role, Fortune 10, 12,500 DAU portal |
| Aug 2020 – Jan 2022 | iptiQ by Swiss Re | Sr. Engineer (Tech Lead) | 8-person team, B2B2C insurtech, 3 awards |
| Jan 2019 – Aug 2020 | AutoNation | Sr. Software Engineer | 5hr→15min batch, 300+ dealerships |
| Dec 2016 – Jan 2019 | Teachers College, Columbia | Engineer & Supervisor | Sole engineer, 1.5yr greenfield, Columbia MDP |
| Aug 2013 – Dec 2016 | Sikorsky (Lockheed Martin) | 3 roles (promoted twice) | CH-53K/S-92, 3 awards, FAA collaboration |

## Verified Awards & Recognition

**Sikorsky (3 awards):**
- Top Gear Award – C# reporting automation tool
- Flight Award – Company-wide Tableau dashboards (20+ screen mission control)
- Flight Award – Oracle forecasting tool implementation

**iptiQ (3 awards):**
- Performance Recognition Reward – December 2020
- Performance Recognition Reward – February 2021
- Performance Recognition Reward – September 2021

**Columbia University:**
- Management Development Program (MDP) – 12-week leadership training

## Verified Metrics (Use These, Not Made-Up Numbers)

These are real, verified from contemporaneous resumes:

| Metric | Source | Notes |
|--------|--------|-------|
| 12,500+ daily active users | Jul 2025 resume | Optum MFE portal |
| 5+ hours → under 15 minutes | Multiple versions | AutoNation Spring Batch |
| 300+ dealerships | Multiple versions | AutoNation scope |
| 8-member team | Oct 2021 resume | iptiQ onshore/offshore |
| 10+ applications modernized | Oct 2021 resume | iptiQ Angular/Spring upgrade |
| 50+ critical CVEs | Jul 2025 resume | iptiQ security work |
| 100+ engineer organization | Oct 2021 resume | iptiQ SAFe org size |
| 20+ hours/month eliminated | Jul 2025 resume | Teachers College automation |
| 1.5-year greenfield | Jul 2025 resume | Teachers College payment platform |
| 20+ TV screens | Dec 2019 resume | Sikorsky analytics mission control |
| GPA: 3.981 | Dec 2019 resume | M.S. Computer Science |

## Education (Verified)

- **M.S., Computer Science** – Sacred Heart University, May 2017 (GPA: 3.981)
- **B.S., Aerospace Engineering** (Propulsion concentration) – Embry-Riddle Aeronautical University, May 2012
- **B.B.A., Management** – SUNY Morrisville, May 2009
- **.NET Technology Graduate Certificate** – Sacred Heart University
- **FAA Private Pilot License** – June 2012

## Unique Differentiators

1. **Aerospace-to-Software transition** – Not a weakness, a strength. Systems thinking from military helicopters applied to distributed systems.

2. **FAA Private Pilot License** – Memorable, unique, shows technical aptitude outside software.

3. **Three Sikorsky Awards** – Rare to have multiple engineering excellence awards at a defense contractor.

4. **Dual management + IC role** – Currently managing team while being hands-on technical lead.

5. **Columbia MDP** – Formal leadership training from Ivy-adjacent institution.

## Content Guidelines

**DO:**
- Use verified metrics from the table above
- Emphasize the aerospace→software story as a differentiator
- Highlight the awards (they're real and impressive)
- Keep to exactly 2 pages
- Use specific, concrete details over vague claims

**DON'T:**
- Make up percentages (e.g., "improved performance by 40%")
- Use inflated numbers not verified in archives
- Hide the aerospace background – own it
- Add more content without removing something else (must stay at 2 pages)

## Archive Reference

The `archive/` folder contains historical resumes from 2014-2025. Use these to:
- Verify claims and dates
- Find authentic details that may have been lost
- Cross-reference any questionable metrics

Key archive files:
- `Tabano_Resume_20140702.pdf` – Original Sikorsky role (S-92 focus)
- `Tabano Resume 23-DEC-2019.pdf` – Detailed Sikorsky breakdown (3 roles)
- `Tabano Resume 05-OCT-2021.pdf` – iptiQ details, 8-person team verified
- `RESUME_TABANO_2025_Jul_29.pdf` – Most recent, verified metrics

## Technical Stack (Current)

**Primary:** Java 17+, TypeScript, Spring Boot, Angular, GraphQL, PostgreSQL
**Infrastructure:** Kubernetes, Docker, Helm, GitHub Actions, Azure DevOps
**Monitoring:** Datadog, Splunk
**Architecture:** Nx monorepos, Single-SPA micro-frontends, event-driven (Kafka/RabbitMQ)

## Contact

- Email: anthony.tabano.dev@gmail.com
- LinkedIn: linkedin.com/in/anthonytabano
- GitHub: github.com/tabano86
- Phone: +1-845-849-4125
- Location: Hudson Valley, NY (Remote preferred)
