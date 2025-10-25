# 🧠 AI Wiki Quiz Generator

<div align="center">

![AI Wiki Quiz Generator](https://img.shields.io/badge/AI-Powered-blue?style=for-the-badge&logo=openai)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

**An intelligent quiz generation platform that creates contextual quizzes from Wikipedia articles using advanced AI technology.**

[🚀 Live Demo]()

</div>

---

## ✨ Features

### 🎯 **Smart Quiz Generation**
- **AI-Powered Questions**: Uses Google's Gemini 2.5 Flash to create intelligent, contextual questions
- **Multiple Difficulty Levels**: Easy, Medium, and Hard questions based on article complexity
- **Comprehensive Coverage**: Generates 8 questions covering different aspects of the topic

### 📚 **Wikipedia Integration**
- **Real-time Scraping**: Extracts content from any Wikipedia article
- **Smart Content Processing**: Identifies key entities, concepts, and important information
- **URL Validation**: Ensures only valid Wikipedia articles are processed

### 🎮 **Interactive Experience**
- **Real-time Quiz Taking**: Interactive quiz interface with immediate feedback
- **Detailed Explanations**: Each answer includes comprehensive explanations
- **Progress Tracking**: Visual progress indicators and scoring system

### 📊 **Advanced Features**
- **Quiz History**: Track and manage previously generated quizzes
- **Search & Filter**: Find specific quizzes from your history
- **Statistics Dashboard**: View your learning progress and performance
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile

## 🏗️ Architecture

### **Backend (FastAPI)**
- **Framework**: FastAPI with async/await support
- **Database**: PostgreSQL with SQLAlchemy ORM
- **AI Integration**: Google Gemini 2.5 Flash API
- **Web Scraping**: BeautifulSoup4 for Wikipedia content extraction
- **API Documentation**: Auto-generated OpenAPI/Swagger docs

### **Frontend (React)**
- **Framework**: React 18 with modern hooks
- **Styling**: Tailwind CSS with custom animations
- **State Management**: React Context and custom hooks
- **HTTP Client**: Axios with error handling
- **Icons**: Lucide React icon library

## 🚀 Quick Start

### Prerequisites
- Python 3.8+
- Node.js 16+
- PostgreSQL (or use provided Neon database)
- Google Gemini API key

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/ai-wiki-quiz-generator.git
cd ai-wiki-quiz-generator
```

### 2. Backend Setup
```bash
cd backend
pip install -r requirements.txt
python main.py
```

### 3. Frontend Setup
```bash
cd frontend
npm install
npm start
```

### 4. Access the Application
- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8000
- **API Docs**: http://localhost:8000/docs

## 🔧 Configuration

### Environment Variables

Create a `.env` file in the backend directory:

```env
# Database Configuration
DATABASE_URL=postgresql://username:password@localhost:5432/quiz_db

# AI Configuration
GEMINI_API_KEY=your_gemini_api_key_here

# Application Settings
DEBUG=True
LOG_LEVEL=INFO
```

### API Keys Setup

1. **Google Gemini API**:
   - Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
   - Create a new API key
   - Add it to your `.env` file

2. **Database Setup**:
   - Use the provided Neon PostgreSQL database
   - Or set up your own PostgreSQL instance

## 📱 Usage

### Generating a Quiz

1. **Enter Wikipedia URL**: Paste any Wikipedia article URL
2. **Click Generate**: The AI will analyze the content and create questions
3. **Take the Quiz**: Answer questions and get immediate feedback
4. **Review Results**: See your score and detailed explanations

### Example URLs to Try

- [Artificial Intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence)
- [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning)
- [Quantum Computing](https://en.wikipedia.org/wiki/Quantum_computing)
- [Climate Change](https://en.wikipedia.org/wiki/Climate_change)

## 🛠️ Development

### Project Structure
```
ai-wiki-quiz-generator/
├── backend/
│   ├── main.py              # FastAPI application
│   ├── database.py          # Database models and connection
│   ├── routers/             # API route handlers
│   │   ├── quiz_router.py   # Quiz generation endpoints
│   │   └── history_router.py # History management endpoints
│   └── services/            # Business logic
│       ├── llm_service.py   # AI service integration
│       └── wikipedia_scraper.py # Web scraping service
├── frontend/
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── services/        # API service layer
│   │   └── App.js          # Main application
│   └── public/             # Static assets
└── docs/                   # Documentation
```

### Running Tests

```bash
# Backend tests
cd backend
python -m pytest tests/

# Frontend tests
cd frontend
npm test
```

### Code Quality

```bash
# Backend linting
cd backend
flake8 .
black .

# Frontend linting
cd frontend
npm run lint
npm run format
```

## 🚀 Deployment

### Docker Deployment

```bash
# Build and run with Docker Compose
docker-compose up --build -d
```

### Vercel Deployment

```bash
# Deploy to Vercel
vercel --prod
```

### Manual Deployment

See [DEPLOYMENT.md](DEPLOYMENT.md) for detailed deployment instructions.

## 📊 Performance

### Benchmarks
- **Quiz Generation**: 3-5 seconds average
- **API Response Time**: < 200ms
- **Database Queries**: Optimized with proper indexing
- **Frontend Load Time**: < 2 seconds

### Monitoring
- Health check endpoint: `/health`
- API documentation: `/docs`
- Real-time error tracking
- Performance metrics

## 🔒 Security

### Security Features
- **Input Validation**: All inputs are validated and sanitized
- **CORS Protection**: Configured for production domains
- **Rate Limiting**: Prevents abuse and ensures fair usage
- **Error Handling**: Secure error messages without sensitive data
- **HTTPS**: Enforced in production environments

### Best Practices
- Environment variables for sensitive data
- Regular dependency updates
- Secure database connections
- Input sanitization
- Error logging and monitoring

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Workflow

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Google Gemini AI** for powerful language processing
- **Wikipedia** for providing comprehensive knowledge base
- **FastAPI** for the excellent web framework
- **React** for the modern frontend framework
- **Tailwind CSS** for beautiful styling

## 📞 Support

- **Documentation**: [Full Documentation](https://ai-wiki-quiz.vercel.app/docs)
- **Issues**: [GitHub Issues](https://github.com/yourusername/ai-wiki-quiz-generator/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/ai-wiki-quiz-generator/discussions)

## 🌟 Show Your Support

Give a ⭐️ if this project helped you!

---

<div align="center">

**Built with ❤️ by [Your Name]**

[⭐ Star this repo](https://github.com/yourusername/ai-wiki-quiz-generator) • [🐛 Report Bug](https://github.com/yourusername/ai-wiki-quiz-generator/issues) • [💡 Request Feature](https://github.com/yourusername/ai-wiki-quiz-generator/issues)

</div>

## 🚀 Features

- **AI-Powered Quiz Generation**: Uses Gemini API via LangChain to generate intelligent quizzes
- **Wikipedia Article Scraping**: Extracts content from Wikipedia articles using BeautifulSoup
- **Interactive Quiz Interface**: Take quizzes with real-time scoring and explanations
- **Quiz History Management**: View, search, and manage previously generated quizzes
- **Responsive Design**: Modern, mobile-friendly UI with Tailwind CSS
- **Database Storage**: PostgreSQL integration for persistent data storage

## 🏗️ Architecture

### Backend (FastAPI)
- **Framework**: FastAPI with SQLAlchemy ORM
- **Database**: PostgreSQL with Alembic migrations
- **AI Integration**: LangChain with Gemini API
- **Web Scraping**: BeautifulSoup for Wikipedia content extraction
- **API Documentation**: Auto-generated OpenAPI/Swagger docs

### Frontend (React)
- **Framework**: React 18 with React Router
- **Styling**: Tailwind CSS with custom animations
- **State Management**: React Hooks (useState, useEffect)
- **HTTP Client**: Fetch API with custom error handling
- **Icons**: Lucide React icon library

## 📋 Prerequisites

- Python 3.8+
- Node.js 16+
- PostgreSQL 12+
- Gemini API Key

## 🛠️ Installation

### 1. Clone the Repository
```bash
git clone <repository-url>
cd ai-wiki-quiz-generator
```

### 2. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Set up environment variables
cp env.example .env
# Edit .env with your configuration:
# DATABASE_URL=postgresql://username:password@localhost:5432/quiz_db
# GEMINI_API_KEY=your_gemini_api_key_here

# Initialize database
python -c "from database import init_db; init_db()"

# Start the backend server
python main.py
```

### 3. Frontend Setup

```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start the development server
npm start
```

## 🔧 Configuration

### Environment Variables

Create a `.env` file in the backend directory:

```env
# Database Configuration
DATABASE_URL=postgresql://username:password@localhost:5432/quiz_db

# Gemini API Configuration
GEMINI_API_KEY=your_gemini_api_key_here

# Application Configuration
DEBUG=True
LOG_LEVEL=INFO
```

### Database Setup

1. Install PostgreSQL
2. Create a database named `quiz_db`
3. Update the `DATABASE_URL` in your `.env` file

### Gemini API Setup

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Create a new API key
3. Add the key to your `.env` file

## 🚀 Usage

### Starting the Application

1. **Start Backend**:
   ```bash
   cd backend
   python main.py
   ```
   Backend will be available at `http://localhost:8000`

2. **Start Frontend**:
   ```bash
   cd frontend
   npm start
   ```
   Frontend will be available at `http://localhost:3000`

### API Endpoints

#### Quiz Generation
- `POST /api/quiz/generate` - Generate quiz from Wikipedia URL
- `POST /api/quiz/validate-url` - Validate Wikipedia URL
- `GET /api/quiz/{id}` - Get specific quiz by ID

#### History Management
- `GET /api/history/` - Get paginated quiz history
- `GET /api/history/{id}` - Get detailed quiz information
- `DELETE /api/history/{id}` - Delete quiz
- `GET /api/history/stats/summary` - Get statistics

### Frontend Routes

- `/` - Generate Quiz (Tab 1)
- `/history` - Quiz History (Tab 2)
- `/quiz/{id}` - Quiz Details

## 📊 Sample Data

The `sample_data/` directory contains:
- Example Wikipedia URLs tested
- Corresponding JSON API outputs
- Screenshots of the application

## 🧪 Testing

### Backend Testing
```bash
cd backend
python -m pytest tests/
```

### Frontend Testing
```bash
cd frontend
npm test
```

## 📱 Screenshots

### Generate Quiz Page
- Clean URL input interface
- Real-time URL validation
- Example Wikipedia URLs
- Generated quiz display with interactive questions

### History Page
- Paginated quiz list
- Search functionality
- Statistics dashboard
- Quiz details modal

## 🔍 API Documentation

Once the backend is running, visit:
- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

## 🛡️ Error Handling

- **URL Validation**: Real-time Wikipedia URL validation
- **Network Errors**: Graceful handling of API failures
- **Database Errors**: Proper error messages and rollbacks
- **LLM Errors**: Fallback quiz generation
- **Frontend Errors**: User-friendly error messages

## 🎨 UI/UX Features

- **Responsive Design**: Works on all device sizes
- **Loading States**: Smooth loading animations
- **Interactive Elements**: Hover effects and transitions
- **Accessibility**: Proper ARIA labels and keyboard navigation
- **Modern Design**: Clean, professional interface

## 🔧 Development

### Code Structure

```
├── backend/
│   ├── main.py                 # FastAPI application
│   ├── database.py             # Database models
│   ├── routers/                # API routes
│   │   ├── quiz_router.py     # Quiz generation endpoints
│   │   └── history_router.py   # History management endpoints
│   └── services/               # Business logic
│       ├── wikipedia_scraper.py
│       └── llm_service.py
├── frontend/
│   ├── src/
│   │   ├── components/         # React components
│   │   ├── services/           # API services
│   │   └── App.js             # Main application
│   └── public/                # Static assets
└── sample_data/               # Test data and screenshots
```

### Adding New Features

1. **Backend**: Add new endpoints in `routers/`
2. **Frontend**: Create components in `src/components/`
3. **Database**: Update models in `database.py`
4. **API**: Update services in `src/services/api.js`

## 🚀 Deployment

### Backend Deployment
```bash
# Install production dependencies
pip install gunicorn

# Run with Gunicorn
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app
```

### Frontend Deployment
```bash
# Build for production
npm run build

# Serve with nginx or similar
```

## 📝 License

This project is licensed under the MIT License.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 📞 Support

For support or questions, please open an issue in the repository.

---

**Built with ❤️ by DeepKlarity Technologies**
