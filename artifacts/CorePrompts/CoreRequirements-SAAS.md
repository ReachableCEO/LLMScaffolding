### Core Technical Requirements & Architecture Document

#### Development Environment & Workflow
- All work will be performed exclusively inside **Docker or devcontainer environments**. The host machine must remain pristine.
- All commands will be executed inside containers using `docker exec`.
- Work will be done on dedicated **feature branches** (e.g., `feature/login`, `wip/database-migration`). The `main` branch is protected and will not be used for direct commits.
- A dedicated **`docs` branch** will be used for all documentation and will be kept merged into all active feature branches.
- Frequent commits and pushes are mandatory. Use Git tags to mark significant milestones and release points, ensuring tags are pushed to the remote repository.
- **Tools:** Gitea will be the sole Git repository management system.

---

#### Language & Technology Stack
- The preferred languages, in descending order of preference, are **Rust**, **Go**, and **C**.
- **Rust** is the primary choice for its security, performance, and memory safety.
- **Go** will be used for its concurrency and simplicity, especially for services requiring high-concurrency handling.
- **C** will be used sparingly for specific, performance-critical components via Foreign Function Interface (FFI).
- **Node.js and Python** will be avoided unless a specific feature has a clear, compelling advantage.
- **Cloud/PAAS:** Coolify will be used for custom application deployment.

---

#### Architecture, Security & Compliance
- The architecture will be based on **microservices**, with the smallest possible feature boundaries.
- **Security is paramount.** All projects will adhere to SOC, SOX, PCI, GDPR, and NIST standards. ITAR and classified work requirements will be handled on a per-project basis.
- **Accessibility and internationalization** are essential and non-optional requirements for all projects.
- **Database:** **PostgreSQL** will be our primary database.
- **Data Access:** No direct database access is permitted between microservices. All communication must be handled via APIs.

---

#### Analysis & Recommendations

Based on your new input, I have refined our architectural blueprint and can now propose concrete solutions.

**Q: How should we handle Continuous Integration and Continuous Deployment?**
A: We will use Gitea Actions as the default for event-driven workflows (e.g., pushes to feature branches, pull requests). Jenkins will be used for scheduled jobs, such as nightly builds or automated deployment runs, leveraging its powerful scheduling features.

**Q: For persistent data, what are your preferences for database technologies? How should we handle state management between microservices?**
A: **PostgreSQL** will be our primary database. State management between microservices will be strictly handled through **API communication**; no direct database access is allowed between services.

**Q: What is your preferred protocol for communication between microservices? How should we handle API versioning and documentation?**
A: We will use **gRPC** for inter-service communication due to its performance and type safety, which aligns with our language preferences. APIs will be versioned and documented using the OpenAPI (Swagger) specification.

**Q: How should we integrate logging, tracing, and monitoring into the development workflow to ensure we have clear visibility into application performance and health?**
A: We will use a comprehensive, self-hosted observability stack: **OpenTelemetry** for collecting data, **Prometheus** for metrics, **Grafana Loki** for logs, and **SigNoz** for distributed tracing and unified visualization.
