# CLAUDE.md - Resume Repository Context

This file provides context for AI assistants (Claude, etc.) working on this resume repository.

## Repository Purpose

LaTeX-based resume for **Anthony Tabano**, a Senior Software Engineer targeting Senior/Staff roles at FAANG or FAANG-adjacent companies.

## CRITICAL: Employment Branding Strategy

**Current situation:** Anthony works for **buildit**, which is owned by **Wipro**. This requires careful handling:

### The Facts
- Hired by buildit (a ~100-person velocity consulting firm) in January 2022
- Did NOT know buildit was owned by Wipro when he joined
- Wipro has since gutted buildit's leadership and engineering culture
- Currently embedded full-time at Optum (UnitedHealth Group) on their CURO platform team
- Internal level: AC2 (manager of managers - L1 managers report to him)
- External title: Senior Software Engineer
- Has been promoted without salary increases (typical MSP behavior)

### Resume Strategy (IMPORTANT)
- **Use "buildit" as employer**, NOT Wipro
- This is accurate: Instagram employees say "Instagram" not "Meta"
- Background checks will reveal Wipro as parent company - that's fine, by then he's in conversation
- The Wipro name triggers auto-rejection at some companies (per Blind forums)
- Resume shows: `buildit — Embedded at Optum (UnitedHealth Group)`

### What Background Checks Will Show
- **Employer of record:** Wipro (parent company)
- **Internal band:** AC2 or similar
- **Dates:** Jan 2022 – Present
- Be prepared to explain internal bands vs functional titles

### Interview Talking Points

**"Why are you leaving?"**
> "The engineering organization has changed significantly. The parent company consolidated control, there's been significant leadership turnover, increased offshore hiring, and reduced focus on technical quality. I'm looking for a team where technical excellence is the priority."

**"Why consulting/staff aug?"**
> "I didn't seek it out. When I joined buildit, I thought it was a boutique engineering firm. They placed me embedded at Optum, which has been great—I've been on the same team for 3+ years leading architectural initiatives. But the parent company's direction has shifted away from quality engineering."

**"So you work for buildit but you're at Optum?"**
> "buildit placed me as an embedded engineer on Optum's platform team. I work directly with Optum engineers on their roadmap—it's not typical staff aug where you're doing project work. I've led major architectural initiatives including their Nx monorepo strategy and micro-frontend portal."

**"What's the relationship with Wipro?"**
> "Wipro is the parent company of buildit. buildit was an acquisition—originally an independent consulting firm. Over the past couple years, Wipro has taken more control of operations."

**"Why not join Optum directly?"**
> "I'd be open to that, but the embedded arrangement has worked well for the technical work. The challenges are more on the buildit side with the organizational changes."

### DO NOT
- Say "Wipro" unprompted on the resume or in early conversations
- Lie about the relationship if directly asked
- Badmouth Wipro aggressively (keep it professional)
- Claim "Staff Engineer" title (actual title is Senior)
- Claim "Engineering Manager" in job title (management is secondary to IC work, not primary)
- Claim to do "system design interviews" (he does technical interviews, not system design)

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
| Jan 2022 – Present | Wipro/buildit → Optum | Sr. Software Engineer | IC at Optum + people mgmt at buildit, Fortune 10, 12,500 DAU portal |
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
| 5+ hours → under 15 minutes | Multiple versions | AutoNation inventory batch (Spring Batch) |
| 1M+ parts catalog | Oct 2021 resume | AutoNation order management scale |
| 300+ dealerships | Multiple versions | AutoNation scope |
| 8-member team | Oct 2021 resume | iptiQ onshore/offshore team |
| 10+ applications modernized | Oct 2021 resume | iptiQ Angular/Spring upgrade |
| 50+ critical CVEs | Jul 2025 resume | iptiQ security work |
| 100+ engineer organization | Oct 2021 resume | iptiQ SAFe org size |
| 20+ hours/month eliminated | Jul 2025 resume | Teachers College automation |
| 1.5-year greenfield | Jul 2025 resume | Teachers College payment platform |
| 20+ TV screens | Dec 2019 resume | Sikorsky analytics mission control |
| GPA: 3.981 | Dec 2019 resume | M.S. Computer Science |

## Additional Verified Details (From Deep Archive Dive)

| Detail | Source | Use Case |
|--------|--------|----------|
| "Screened engineering candidates through interviews" | Oct 2021 iptiQ resume | Shows hiring bar involvement |
| "3-legged OAuth2 (CAS/Shibboleth → JWT)" | Oct 2021 resume | Security/auth expertise at Teachers College |
| "Monte Carlo simulations and ANOVA forecasting" | Dec 2019 resume | Statistical modeling at Sikorsky |
| "FAA certification, flight testing" collaboration | Dec 2019 resume | Regulatory experience |
| "Visited aircraft hangers...inspect part wear" | Dec 2019 resume | Hands-on field work |
| "Acted as DBA for internal reporting systems" | Dec 2019 resume | Database administration at Sikorsky |
| ClipCraft IntelliJ plugin | Mar 2025 resume | Open source contribution (GitHub not on resume) |

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

4. **IC with people management responsibility** – Senior engineer day-to-day while also managing 15-person org (management is secondary, not primary role).

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
- Phone: +1-845-849-4125
- Location: Hudson Valley, NY (Remote preferred)
- GitHub: github.com/tabano86 (not on resume - nothing notable there)

## Target Companies & Role Alignment

### FAANG Targeting

| Company | Fit | Notes |
|---------|-----|-------|
| **Amazon** | Strong | Metrics-driven culture matches "12,500 DAU". Prepare STAR stories. Target L5/L6. |
| **Google** | Good | Nx monorepo, architecture work resonates. L5/L6 targets. |
| **Meta** | Good | Micro-frontend/scale experience relevant. |
| **Microsoft** | Strong | Azure experience is a plus. .NET background from Sikorsky helps. |
| **Apple** | Weak | Stack mismatch (heavy Obj-C/Swift). |

### FAANG-Adjacent Targets

| Company | Why It Fits |
|---------|-------------|
| **Stripe, Square** | Fintech - iptiQ insurance background shows domain versatility |
| **Datadog** | Uses it daily at Optum - built-in conversation starter |
| **Snowflake, Databricks** | Data engineering adjacent, Oracle/analytics background |
| **Netflix** | Frontend platform work aligns |
| **Palantir, Anduril, SpaceX** | **Aerospace background is gold here** - security clearance potential |

### The Aerospace Angle

For defense tech (Palantir, Anduril, SpaceX, L3Harris, Northrop), the Sikorsky experience transforms from "old job" to **major differentiator**:
- Demonstrates clearance eligibility
- Shows ability to work in regulated/high-stakes environments
- FAA certification collaboration experience
- Systems thinking from military helicopter programs

## Interview Preparation Notes

### Known Gap: System Design Interviews
Anthony conducts technical interviews but NOT system design interviews at current role. For FAANG/Staff roles, system design is mandatory.

**Prep recommendations:**
- Practice on Excalidraw/Miro
- Study: "Designing Data-Intensive Applications" by Kleppmann
- Mock interviews via Pramp or interviewing.io
- Actual experience is solid (Nx monorepo, micro-frontends, event-driven architecture) - just needs to verbalize patterns

### Reference Strategy

**Complexity:** As an embedded consultant, references are tricky.

| Source | Can Speak To | Notes |
|--------|--------------|-------|
| Optum colleagues | Day-to-day technical work | He's a vendor to them technically |
| buildit colleagues | Management capability | Many may have left during gutting |
| Previous employers | Straightforward | iptiQ, AutoNation, Columbia, Sikorsky |

**Recommendation:** Line up at least one Optum contact (peer or stakeholder) who can speak to technical contributions.

### Compensation Anchoring

- Likely underpaid: promotions without salary increases
- Can cite market rate without appearing greedy
- Frame as: "I've taken on significantly more responsibility without corresponding compensation adjustment"

### LinkedIn Consistency

**Critical:** LinkedIn must match resume strategy.
- Company: "buildit" (can add "a Wipro company" in parentheses if required)
- Title: "Senior Software Engineer"
- If LinkedIn says "Wipro" and resume says "buildit", looks deceptive
- Keep them consistent

## Behavioral Interview Stories (STAR Format)

Prepare stories for these common questions using archive-verified examples:

| Question | Suggested Story |
|----------|-----------------|
| "Tell me about a time you led a major technical initiative" | Nx monorepo consolidation at Optum |
| "Describe a performance improvement you made" | 5hr→15min AutoNation batch job |
| "How do you handle team conflict?" | Managing 8-person onshore/offshore team at iptiQ |
| "Tell me about a failure" | TBD - prepare one |
| "Why did you transition from aerospace?" | Passion for building software, started automating at Sikorsky, realized that was what I wanted to do |
| "What's your management philosophy?" | Columbia MDP training + current dual IC/manager role |

## Resume Version Control

When updating the resume:
1. Make changes in `content.tex` (not `resume.tex`)
2. Build with `.\build.ps1` (Windows) or `make` (Unix)
3. Verify PDF is exactly 2 pages
4. Test that all links work
5. Git commit only `content.tex` changes (PDFs are gitignored)

## ATS Optimization

The resume includes keywords for ATS (Applicant Tracking Systems):

**Explicitly included:**
- REST APIs, Microservices, GraphQL (architecture patterns)
- System Design (even though he doesn't interview on it, he does it)
- CI/CD, Agile/Scrum (process keywords)
- Specific technologies: Java, TypeScript, Python, Spring Boot, Angular, React, Kubernetes, Docker, Terraform, PostgreSQL, MongoDB, Redis, Kafka, RabbitMQ

**Format considerations:**
- Uses standard section headers (Technical Expertise, Professional Experience, Education)
- Dates in consistent format (Mon YYYY)
- Job titles in standard format
- No tables in content sections (breaks some ATS parsers)
- PDF generated from LaTeX parses cleanly

## Outreach Strategy

### Application Channels (In Order of Effectiveness)

1. **Internal referrals** - Best chance. Ask contacts at target companies.
2. **Recruiter relationships** - Technical recruiters at agencies who specialize in FAANG placement
3. **LinkedIn "Easy Apply"** - Low effort, low conversion, but volume helps
4. **Direct company career pages** - Standard, moderate conversion

### LinkedIn Profile Checklist

- [ ] Headline matches target role: "Senior Software Engineer | Technical Leadership | Platform Engineering"
- [ ] Company shows "buildit" not "Wipro"
- [ ] Title shows "Senior Software Engineer"
- [ ] Featured section shows the 12,500 DAU portal or other highlights
- [ ] Skills section includes all keywords from Technical Expertise
- [ ] Recommendations from Optum colleagues if possible

### Cold Outreach Template (Recruiters)

```
Hi [Name],

I'm a Senior Software Engineer with 10+ years of experience, currently leading
platform engineering at Optum (Fortune 10). I'm exploring senior/staff roles
at [Company] where I can bring my experience building systems at scale.

Key highlights:
- Architected micro-frontend portal serving 12,500+ daily users
- Led Nx monorepo consolidation across enterprise frontend teams
- Background in aerospace engineering (Sikorsky/Lockheed Martin)

Would you be open to a brief call to discuss opportunities?

Best,
Anthony
```

## Red Flags Recruiters Might Flag

Be prepared to address:

| Concern | Response |
|---------|----------|
| "Consulting company, not product" | "I've been embedded at Optum for 3+ years on their core platform team - it's product work, not project-based consulting" |
| "Short tenure at iptiQ (1.5 years)" | "Swiss Re strategically divested the iptiQ division. The team was disbanded." |
| "No FAANG experience" | "I've operated at FAANG scale - 12,500 DAU portal, Fortune 10 healthcare org with enterprise requirements" |
| "Aerospace background is unrelated" | "It taught me systems thinking and working in high-stakes, regulated environments - directly applicable to building reliable distributed systems" |
| "You mention managing people but applying for IC" | "The management at buildit is in addition to my primary IC work at Optum. Day-to-day I'm hands-on engineering. I'm looking to continue on the IC track." |

## Quick Reference Card

**When asked "Where do you work?"**
> "buildit, embedded at Optum"

**When asked "What's buildit?"**
> "An engineering consultancy, part of Wipro. I'm embedded full-time on Optum's platform team."

**When asked "So are you an FTE or contractor?"**
> "I'm a W2 employee of buildit, embedded at Optum. Not a 1099 contractor."

**When asked "What level are you?"**
> "Senior Software Engineer. I also have people management responsibilities at my consulting firm - I manage a 15-person org there, but my day-to-day is hands-on engineering at Optum."

**When asked about title discrepancy on background check:**
> "AC2 is the internal band at Wipro/buildit. Senior Software Engineer is my functional title."
