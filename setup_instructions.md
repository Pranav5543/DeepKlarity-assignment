# AI Wiki Quiz Generator - Setup Instructions

## Quick Start Guide

### Prerequisites
- Python 3.8+
- Node.js 16+
- PostgreSQL 12+
- Gemini API Key

### 1. Database Setup

#### Install PostgreSQL
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install postgresql postgresql-contrib

# macOS
brew install postgresql

# Windows
# Download from https://www.postgresql.org/download/windows/
```

#### Create Database
```bash
# Connect to PostgreSQL
sudo -u postgres psql

# Create database and user
CREATE DATABASE quiz_db;
CREATE USER quiz_user WITH PASSWORD 'your_password';
GRANT ALL PRIVILEGES ON DATABASE quiz_db TO quiz_user;
\q
```

### 2. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create environment file
cp env.example .env

# Edit .env file with your configuration:
# DATABASE_URL=postgresql://quiz_user:your_password@localhost:5432/quiz_db
# GEMINI_API_KEY=your_gemini_api_key_here

# Initialize database
python -c "from database import init_db; init_db()"

# Start backend server
python main.py
```

### 3. Frontend Setup

```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start development server
npm start
```

### 4. Gemini API Setup

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with your Google account
3. Click "Create API Key"
4. Copy the API key
5. Add it to your `.env` file: `GEMINI_API_KEY=your_api_key_here`

## Testing the Application

### 1. Test Backend
```bash
# Check if backend is running
curl http://localhost:8000/health

# Test API documentation
# Visit: http://localhost:8000/docs
```

### 2. Test Frontend
```bash
# Check if frontend is running
# Visit: http://localhost:3000
```

### 3. Test Quiz Generation
1. Open http://localhost:3000
2. Enter a Wikipedia URL (e.g., https://en.wikipedia.org/wiki/Alan_Turing)
3. Click "Generate Quiz"
4. Wait for the quiz to be generated
5. Take the quiz or view the history

## Troubleshooting

### Common Issues

#### 1. Database Connection Error
```
Error: could not connect to server
```
**Solution**: Ensure PostgreSQL is running and credentials are correct in `.env`

#### 2. Gemini API Error
```
Error: Invalid API key
```
**Solution**: Verify your Gemini API key is correct and has proper permissions

#### 3. Port Already in Use
```
Error: Address already in use
```
**Solution**: Change the port in your configuration or kill the process using the port

#### 4. Module Not Found
```
Error: No module named 'fastapi'
```
**Solution**: Ensure virtual environment is activated and dependencies are installed

### Debug Mode

#### Backend Debug
```bash
# Set debug mode
export DEBUG=True

# Run with verbose logging
python main.py --log-level debug
```

#### Frontend Debug
```bash
# Enable React debug mode
export REACT_APP_DEBUG=true

# Start with debug logging
npm start
```

## Production Deployment

### Backend Production
```bash
# Install production dependencies
pip install gunicorn

# Run with Gunicorn
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:8000
```

### Frontend Production
```bash
# Build for production
npm run build

# Serve with nginx or similar web server
```

## Environment Variables Reference

### Backend (.env)
```env
# Database
DATABASE_URL=postgresql://username:password@localhost:5432/quiz_db

# API Keys
GEMINI_API_KEY=your_gemini_api_key_here

# Application
DEBUG=True
LOG_LEVEL=INFO
HOST=0.0.0.0
PORT=8000
WORKERS=1
RELOAD=false
```

### Frontend (.env)
```env
# API Configuration
REACT_APP_API_URL=http://localhost:8000/api
REACT_APP_DEBUG=false
```

## Sample Test URLs

Try these Wikipedia URLs for testing:

1. **Alan Turing**: https://en.wikipedia.org/wiki/Alan_Turing
2. **Machine Learning**: https://en.wikipedia.org/wiki/Machine_learning
3. **Photosynthesis**: https://en.wikipedia.org/wiki/Photosynthesis
4. **Renaissance**: https://en.wikipedia.org/wiki/Renaissance
5. **Olympic Games**: https://en.wikipedia.org/wiki/Olympic_Games

## Performance Optimization

### Database Optimization
```sql
-- Create indexes for better performance
CREATE INDEX idx_quiz_url ON quiz_records(url);
CREATE INDEX idx_quiz_created_at ON quiz_records(created_at);
```

### Backend Optimization
```python
# Enable connection pooling
DATABASE_URL=postgresql://user:pass@localhost/db?pool_size=10&max_overflow=20
```

### Frontend Optimization
```bash
# Build optimized version
npm run build

# Analyze bundle size
npm run analyze
```

## Security Considerations

### API Security
- Use HTTPS in production
- Implement rate limiting
- Validate all inputs
- Sanitize user data

### Database Security
- Use strong passwords
- Enable SSL connections
- Regular backups
- Access control

### Frontend Security
- Content Security Policy
- XSS protection
- Input validation
- Secure headers

## Monitoring and Logging

### Backend Logging
```python
import logging

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
```

### Frontend Monitoring
```javascript
// Add error tracking
window.addEventListener('error', (event) => {
  console.error('Frontend error:', event.error);
});
```

## Support

If you encounter issues:

1. Check the logs for error messages
2. Verify all environment variables are set
3. Ensure all services are running
4. Check network connectivity
5. Review the troubleshooting section above

For additional help, please refer to the main README.md file or open an issue in the repository.
