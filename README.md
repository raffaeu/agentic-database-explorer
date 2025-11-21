# agentic-database-explorer

A demonstration project showing how to build an agentic AI on top of Azure SQL to analyze database schemas, inspect and query content, and incrementally learn and improve T-SQL. The goal is to illustrate an end-to-end pattern for combining an interactive desktop UI with a model-driven backend and containerized hosting on Azure.

## Why this project exists

- Showcase agentic workflows that reason about database structure and generate safe, explainable T-SQL.
- Demonstrate integration patterns between a React web UI, a C# Web API, model orchestration (Ai Foundry), and Azure-hosted services.
- Provide a reference for iterating on SQL generation, validation, and automated learning from query results.

### Stack

- Frontend: React + TypeScript (web UI)
- Backend: C# Web API (business logic, query execution, access control)
- AI: Ai Foundry for model orchestration and agent logic
- Hosting: Containerized services (Azure Container Apps)
- Database: Azure SQL

### Key features

- Schema analysis and automatic exploration of tables, columns, and relationships
- Natural-language → T-SQL generation with contextual understanding of schema and sample data
- Query simulation, execution, and result inspection with safety checks and least-privilege patterns
- Iterative learning: the agent refines generated SQL and suggestions based on execution feedback
- Local-first UX for development with an option to deploy containerized services to Azure

### Project Structure

```
infra/
	docker/                # Local container orchestration (docker-compose)
	iac/
		bicep/               # Azure Bicep templates (preferred for Azure)
		terraform/           # Terraform alternative definitions
apps/
	react/                 # Vite + React + TypeScript frontend
api/
	AgenticDatabaseExplorer.Api/  # ASP.NET Core Web API project
```

### Local Development

React dev server:
```bash
cd apps/react
npm install
npm run dev
```

Web API:
```bash
cd api/AgenticDatabaseExplorer.Api
dotnet restore
dotnet run
```

Docker (optional local SQL + API container):
```bash
cd infra/docker
docker compose up -d
```

### Getting started (brief)

- Clone the repo and open in your IDE.
- Provide an Azure SQL connection string and any required API keys via environment variables or a local secrets store.
- Run the React dev server and the C# API in parallel for local development.
- See docs/ or /docs for more detailed setup and deployment instructions.
