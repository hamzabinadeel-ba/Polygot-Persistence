# Polygot Persistence
## Organ Transplant Data Integration System

# Project Overview
This project designs and implements a polyglot data architecture for a healthcare organ transplant management system, integrating relational (SQL) and document-based (NoSQL/JSON) data stores. The system models high-stakes, compliance-critical workflows including patient–donor matching, organ transport tracking, clinician communication and immutable audit logging. The architecture prioritises data integrity, traceability and interoperability across heterogeneous data sources.
**Team structure:** 6-member group project
**My responsibility:** End-to-end SQL database design, schema modelling and relational integrity

# Project Context
Organ transplantation systems are:
- Time-critical
- Multi-actor (doctors, hospitals, transport teams, regulators)
- Legally and ethically regulated
- Highly audit-sensitive

Traditional single-database designs struggle to handle:
- Strong transactional requirements
- High-volume event logs
- Semi-structured communication data
This project addresses these constraints through a polyglot persistence strategy.

# System Architecture
## Relational Layer (SQL)
Used for core, consistency-critical entities.
### Responsibilities:
- Entity modelling and normalisation
- Primary and foreign key constraints
- Transactional integrity
- Referential consistency across workflows

### Key entities modelled (SQL):
- Patients
- Donors
- Organs
- Hospitals
- Transplants
- Medical staff
- Allocation and matching records

### Quantitative scope:
- 7+ core relational tables
- Multiple one-to-many and many-to-many relationships
- Enforced referential integrity across all transactional records
I was fully responsible for the SQL schema design, table creation and relationship modelling.

## Document Layer (NoSQL / JSON)
Used for high-volume, flexible and append-only data.
**Collections include:**
- Audit logs (system actions, timestamps, actors)
- Organ transport tracking (location and status events)
- Doctor–patient communication records

**Quantitative scope:**
- 3 primary JSON collections
- Event-driven records with timestamped entries
- Designed for write-heavy, read-flexible access patterns

## Integration Layer (Python)

**A Python integration layer coordinates:**
- Data flow between SQL and NoSQL stores
- Synchronisation of IDs and references
- End-to-end workflow consistency
This ensures the system functions as one coherent platform, not isolated databases.

# Methodology

- Conceptual data modelling (ERD design)
- Normalised relational schema construction
- Polyglot persistence justification based on access patterns
- Integration testing across databases
- Auditability and governance validation

# Key Quantitative Characteristics

- 6-member team project
- 7+ SQL tables with enforced constraints
- 3 NoSQL collections for semi-structured data
- 100% traceability of critical actions via audit logs
- Clear separation of transactional vs event-based data

# Tools and Technologies
- **SQL:** Relational schema design and querying
- **NoSQL / JSON:** Semi-structured data storage
- **Python:** Integration and data orchestration

# Individual Contribution

This was a 6-member group project.
My role focused on:
- Designing the entire SQL relational schema
- Defining primary/foreign key relationships
- Ensuring data normalisation and integrity
- Supporting integration with NoSQL components
This contribution underpins the transactional reliability of the entire system.

# Key Skills Demonstrated
- Relational data modelling
- Polyglot persistence architecture
- SQL schema design and integrity enforcement
- Systems integration thinking
- Healthcare data governance awareness
- Team-based system development

# Key Takeaway
This project demonstrates how robust relational design, when combined with flexible document storage, enables scalable and auditable systems in high-risk, regulated environments. It highlights the importance of architectural judgement, not just query execution.
