# Web API Template

Template for autonomous development of RESTful APIs and web services.

## Technology Detection Patterns

### Node.js/Express
- **Files**: `package.json`, `server.js`, `app.js`, `index.js`
- **Dependencies**: `express`, `cors`, `helmet`, `dotenv`
- **Testing**: `jest`, `supertest`, `mocha`, `chai`
- **Database**: `mongoose`, `pg`, `mysql2`, `sqlite3`

### Python/FastAPI
- **Files**: `main.py`, `app.py`, `requirements.txt`, `pyproject.toml`
- **Dependencies**: `fastapi`, `uvicorn`, `pydantic`, `sqlalchemy`
- **Testing**: `pytest`, `httpx`, `unittest`
- **Database**: `psycopg2`, `pymongo`, `mysql-connector-python`

### Go
- **Files**: `main.go`, `go.mod`, `go.sum`
- **Framework**: `gin`, `echo`, `fiber`, `net/http`
- **Testing**: `testing` package, `testify`
- **Database**: `gorm`, `sql`, `mongo-go-driver`

## Standard Features Template

### Core Requirements
- **Authentication**: JWT tokens, session management, role-based access
- **CRUD Operations**: Create, Read, Update, Delete for primary entities
- **Input Validation**: Request body validation, parameter sanitization
- **Error Handling**: Consistent error responses, proper HTTP status codes
- **Logging**: Request/response logging, error tracking
- **Documentation**: OpenAPI/Swagger documentation

### Quality Requirements
- **Testing**: Unit tests (>80% coverage), integration tests, API endpoint tests
- **Security**: Input sanitization, CORS configuration, rate limiting
- **Performance**: Response time optimization, database query optimization
- **Monitoring**: Health check endpoints, metrics collection

## Implementation Phases

### Phase 1: Project Structure
```
Project Setup
├── Initialize project structure
├── Configure build system (package.json, go.mod, etc.)
├── Set up development environment
└── Configure linting and formatting

Testing Foundation
├── Set up testing framework
├── Configure test database
├── Create test utilities
└── Implement health check endpoint
```

### Phase 2: Core API
```
Authentication System
├── User model and database schema
├── JWT token generation and validation
├── Login/logout endpoints
├── Password hashing and security
└── Authentication middleware

Core CRUD Operations
├── Primary entity models
├── Database operations (repository pattern)
├── API endpoints with proper HTTP methods
├── Request/response serialization
└── Error handling middleware
```

### Phase 3: Advanced Features
```
Input Validation
├── Request body validation schemas
├── Parameter validation middleware
├── Custom validation rules
└── Error response formatting

API Documentation
├── OpenAPI/Swagger specification
├── Endpoint documentation
├── Example requests/responses
└── Interactive API explorer
```

### Phase 4: Production Readiness
```
Security Features
├── Rate limiting implementation
├── CORS configuration
├── Security headers (helmet.js, etc.)
├── Input sanitization
└── SQL injection prevention

Monitoring & Logging
├── Request/response logging
├── Error logging and tracking
├── Performance metrics
├── Health monitoring endpoints
└── Environment configuration
```

## Agent Instructions

### For @agent-architect
- Design RESTful API following OpenAPI specifications
- Plan database schema with proper relationships
- Consider scalability and performance requirements
- Design authentication and authorization flows
- Plan comprehensive testing strategy

### For @agent-developer
- Implement following REST conventions (GET, POST, PUT, DELETE)
- Use appropriate HTTP status codes (200, 201, 400, 401, 404, 500)
- Implement proper error handling with consistent response format
- Follow security best practices (password hashing, JWT handling)
- Write comprehensive tests for all endpoints

### For @agent-debugger
- Test API endpoints with various input combinations
- Verify authentication flows and edge cases
- Check database connection and query performance
- Test error scenarios and exception handling
- Validate security measures and input sanitization

### For @agent-quality-reviewer
- Review API design for REST compliance
- Check security implementations (authentication, input validation)
- Verify error handling and logging approaches
- Review database queries for performance and security
- Validate test coverage and quality

### For @agent-technical-writer
- Generate OpenAPI/Swagger documentation
- Create API usage examples and tutorials
- Document authentication requirements
- Explain error response formats
- Provide deployment and configuration guide

## Testing Strategy

### Unit Tests
- Business logic functions
- Database operations
- Authentication utilities
- Validation functions
- Error handling

### Integration Tests
- API endpoint functionality
- Database integration
- Authentication flows
- Middleware behavior
- Error scenarios

### API Tests
- HTTP method compliance
- Status code validation
- Request/response formats
- Authentication requirements
- Rate limiting behavior

## Deployment Configuration

### Environment Variables
```bash
# Database
DATABASE_URL=postgresql://user:pass@localhost/dbname
DB_HOST=localhost
DB_PORT=5432

# Authentication
JWT_SECRET=your-secret-key
JWT_EXPIRES_IN=1h

# Server
PORT=3000
NODE_ENV=development

# Security
RATE_LIMIT_REQUESTS=100
RATE_LIMIT_WINDOW=15min
```

### Docker Configuration
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

This template provides comprehensive guidance for autonomous development of web APIs with proper security, testing, and documentation.