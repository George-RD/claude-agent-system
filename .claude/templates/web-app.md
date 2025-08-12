# Web Application Template

Template for autonomous development of full-stack web applications with frontend and backend components.

## Technology Detection Patterns

### React/Next.js Frontend
- **Files**: `package.json`, `src/App.js`, `pages/index.js`, `next.config.js`
- **Dependencies**: `react`, `react-dom`, `next`, `@types/react`
- **Styling**: `tailwindcss`, `styled-components`, `emotion`, `sass`
- **State**: `redux`, `zustand`, `context`, `swr`, `react-query`

### Vue.js Frontend
- **Files**: `package.json`, `src/main.js`, `vue.config.js`, `nuxt.config.js`
- **Dependencies**: `vue`, `vue-router`, `vuex`, `pinia`
- **Styling**: `vuetify`, `element-ui`, `tailwindcss`

### Backend Integration
- **Node.js**: Express, Fastify, NestJS
- **Python**: FastAPI, Django, Flask
- **Database**: PostgreSQL, MySQL, MongoDB, SQLite

## Standard Features Template

### Frontend Requirements
- **User Interface**: Responsive design, mobile-friendly
- **User Authentication**: Login/register forms, protected routes
- **Data Management**: CRUD operations with proper state management
- **Form Handling**: Input validation, error display, loading states
- **Navigation**: Routing, navigation menus, breadcrumbs
- **User Experience**: Loading indicators, error boundaries, notifications

### Backend Requirements
- **API Endpoints**: RESTful API or GraphQL
- **Authentication**: JWT tokens, session management
- **Database**: Data models, relationships, migrations
- **File Upload**: Image/document upload handling
- **Real-time**: WebSocket connections (optional)

### Quality Requirements
- **Testing**: Component tests, integration tests, E2E tests
- **Performance**: Code splitting, lazy loading, optimization
- **Security**: XSS prevention, CSRF protection, input sanitization
- **Accessibility**: ARIA labels, keyboard navigation, screen readers
- **SEO**: Meta tags, structured data, sitemap

## Implementation Phases

### Phase 1: Foundation Setup
```
Project Initialization
├── Set up frontend build system (Vite, Webpack, etc.)
├── Configure backend API server
├── Set up database and migrations
├── Configure development environment
└── Set up linting, formatting, and testing

Authentication Foundation
├── User registration and login UI
├── Backend authentication endpoints
├── JWT token handling
├── Protected route components
└── Authentication state management
```

### Phase 2: Core Features
```
Data Management
├── Database models and relationships
├── API endpoints for CRUD operations
├── Frontend components for data display
├── Forms for data creation/editing
└── State management integration

User Interface
├── Navigation components and routing
├── Responsive layout and styling
├── Form components with validation
├── Data display components (tables, cards, lists)
└── Loading and error states
```

### Phase 3: Advanced Features
```
Enhanced User Experience
├── Real-time updates (WebSocket/SSE)
├── File upload and handling
├── Search and filtering
├── Pagination and infinite scroll
└── Notifications and feedback

Performance Optimization
├── Code splitting and lazy loading
├── Image optimization
├── Database query optimization
├── Caching strategies
└── Bundle size optimization
```

### Phase 4: Production Readiness
```
Testing Suite
├── Unit tests for components and utilities
├── Integration tests for API endpoints
├── E2E tests for critical user flows
├── Performance testing
└── Accessibility testing

Deployment Configuration
├── Build optimization
├── Environment configuration
├── Docker containerization
├── CI/CD pipeline setup
└── Monitoring and logging
```

## Agent Instructions

### For @agent-architect
- Design component architecture with proper separation of concerns
- Plan state management strategy (local vs global state)
- Design API endpoints following REST or GraphQL best practices
- Consider performance implications (caching, lazy loading)
- Plan testing strategy across frontend and backend

### For @agent-developer
- Implement responsive, accessible UI components
- Follow React/Vue best practices (hooks, composition)
- Implement proper error boundaries and loading states
- Use TypeScript for type safety
- Write comprehensive tests for components and API endpoints

### For @agent-debugger
- Test user flows across different devices and browsers
- Debug state management and data flow issues
- Test form validation and error handling
- Verify API integration and error scenarios
- Performance profiling and optimization

### For @agent-quality-reviewer
- Review component design patterns and reusability
- Check accessibility compliance (WCAG guidelines)
- Verify security best practices (XSS, CSRF prevention)
- Review performance optimizations
- Validate test coverage and quality

### For @agent-technical-writer
- Create component documentation and storybook
- Document API endpoints and data models
- Write user guides and tutorials
- Create deployment and setup instructions
- Document architecture decisions and patterns

## Frontend Structure

### React/Next.js Example
```
src/
├── components/          # Reusable UI components
│   ├── ui/             # Basic UI components (Button, Input, etc.)
│   ├── forms/          # Form components
│   └── layout/         # Layout components
├── pages/              # Page components (Next.js) or views
├── hooks/              # Custom React hooks
├── services/           # API service functions
├── store/              # State management (Redux, Zustand)
├── types/              # TypeScript type definitions
├── utils/              # Utility functions
└── styles/             # Global styles and themes
```

### Testing Strategy

### Frontend Tests
- **Component Tests**: React Testing Library, Vue Test Utils
- **Unit Tests**: Utility functions, custom hooks
- **Integration Tests**: Component interactions, API integration
- **E2E Tests**: Cypress, Playwright for critical user flows
- **Visual Tests**: Storybook visual regression testing

### Backend Tests
- **Unit Tests**: Business logic, utilities
- **Integration Tests**: API endpoints, database operations
- **Contract Tests**: API contract validation
- **Performance Tests**: Load testing critical endpoints

## Development Workflow

### Local Development
```bash
# Frontend
npm run dev          # Start development server
npm run test         # Run test suite
npm run build        # Build for production
npm run lint         # Lint code

# Backend
npm run start:dev    # Start API server with hot reload
npm run test         # Run API tests
npm run migrate      # Run database migrations
```

### Environment Configuration
```bash
# Frontend (.env.local)
NEXT_PUBLIC_API_URL=http://localhost:3001/api
NEXT_PUBLIC_APP_NAME=My Web App

# Backend (.env)
DATABASE_URL=postgresql://user:pass@localhost/myapp
JWT_SECRET=your-secret-key
PORT=3001
```

This template provides comprehensive guidance for autonomous development of modern web applications with both frontend and backend components.